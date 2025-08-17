from django.db import models

# Create your models here.

class Clientes (models.Model):
    Nombre = models.CharField(max_length= 50)
    Apellidos = models.CharField(max_length=50)
    Correo = models.EmailField(max_length=50)
    TipoCliente = models.CharField(max_length=3)
    
    def __str__(self):
        mostrar = self.Nombre + ' - ' + self.TipoCliente
        return mostrar



    