CREATE DATABASE hotelesBuenasNochesPIA;
CREATE TABLE hoteles (
    hotelID INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    dirección VARCHAR(255) NOT NULL,
    telRecepcion VARCHAR(15) NOT NULL
);
CREATE TABLE habitaciones (
    habitacionID INT IDENTITY(1,1) PRIMARY KEY,
    hotelID INT,
    nombre VARCHAR(100) NOT NULL,
    precioPorNoche DECIMAL(10, 2) NOT NULL,
    maximoHuespedes INT NOT NULL,
    ocupada BIT NOT NULL,
    FOREIGN KEY (hotelID) REFERENCES hoteles(hotelID)
);
CREATE TABLE restaurantes (
    restauranteID INT IDENTITY(1,1) PRIMARY KEY,
    hotelID INT,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    FOREIGN KEY (hotelID) REFERENCES hoteles(hotelID)
);
CREATE TABLE Menus (
    platilloID INT IDENTITY(1,1) PRIMARY KEY,
    restauranteID INT,
    platillo VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (restauranteID) REFERENCES restaurantes(restauranteID)
);
CREATE TABLE Clientes (
    clienteID INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidoPaterno VARCHAR(100) NOT NULL,
    apellidoMaterno VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    RFC VARCHAR(13) NOT NULL,
    cuentaPrincipal VARCHAR(20) NOT NULL,
);
CREATE TABLE otraCuenta(
    clienteID INT NOT NULL,
    numCuentaOpcional VARCHAR(20) NOT NULL,
    FOREIGN KEY (clienteID) REFERENCES Clientes(clienteID)
);

CREATE TABLE Reservaciones (
    reservaciónID INT IDENTITY(1,1) PRIMARY KEY,
    clienteID INT NOT NULL,
    habitacionID INT NOT NULL,
    fechaInicio DATE NOT NULL,
    fechaFin DATE NOT NULL,
    totalPagar DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    otrosCargos DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (clienteID) REFERENCES Clientes(clienteID),
    FOREIGN KEY (habitacionID) REFERENCES Habitaciones(habitacionID)
);



CREATE TABLE CheckInCheckOut (
    id INT IDENTITY(1,1) PRIMARY KEY,
    reservaciónID INT NOT NULL,
    fechaCheckIn DATE,
    horaCheckIn TIME,
    fechaCheckOut DATE,
    horaCheckOut TIME,
    FOREIGN KEY (reservaciónID) REFERENCES Reservaciones(reservaciónID)
);

CREATE TABLE Empleados (
    empleadoID INT PRIMARY KEY,
    hotelID INT,
    nombre VARCHAR(100) NOT NULL,
    apellidoPaterno VARCHAR(100) NOT NULL,
    apellidoMaterno VARCHAR(100) NOT NULL,
    fechaNacimiento DATE NOT NULL,
    RFC VARCHAR(13) NOT NULL,
    puestoID INT,
    jefeID INT,
    fechaIngreso DATE NOT NULL,
    sueldoMensual DECIMAL(10, 2) NOT NULL,
    activo BIT NOT NULL,
    fechaBaja DATE,
    FOREIGN KEY (hotelID) REFERENCES Hoteles(hotelID),
    FOREIGN KEY (puestoID ) REFERENCES Puestos(puestoID ),
    FOREIGN KEY (jefeID) REFERENCES Empleados(empleadoID)
);

CREATE TABLE Puestos (
    puestoID INT IDENTITY(1,1) PRIMARY KEY,
    puesto VARCHAR(50) NOT NULL
);

CREATE TABLE ConsumoRestaurante (
    consumoID INT PRIMARY KEY,
    reservacionID INT,
    platilloID INT,
    fechaConsumo DATE NOT NULL,
    costo DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (reservacionID ) REFERENCES Reservaciones(reservacionID ),
    FOREIGN KEY (platilloID ) REFERENCES Menus(platilloID )
);
