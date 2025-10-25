# Plan de Continuidad de Negocio
## ¿Qué es?
Un **documento** que describe cuales son los **procesos principales** que deben de **seguir operando** en caso de un **incidente físico o lógico** en los sistemas de una empresa.
**Proceso principal**: Los que mantienen a flote la empresa o aseguran su supervivencia.
----El BCP **NO** protege **TODOS** los **PROCESOS** y **NO** se **CENTRA** en **ACTIVOS**----
```
Administración de Riesgos
			|
			v
	Riesgos de activos
Ej: Maquina que hace papitas
```
```
BCP -> Procesos los cuales contienen activos
Ej: Hacer Flamin Hot
		   | -> Maquina
Proceso   /| -> Mano
Flamin Hot\| -> Materia prima (Papa, Aceite, Picante)
		   | -> Logistica (Camion, Chofer)
```
```
Expectativa 					Realidad
$$$$ -con BCP-> $$$$		$$$$ -con BCP-> $$
							$$$$ -sin BCP-> $
|											  |
-----------------------------------------------
						|
		Nivel Aceptable Predefinido (NAP)
						|
	   Nivel aceptable de ingresos para que 
			  la empresa sobreviva
```
## ¿Para qué sirve?
Sirve para definir la **estrategia** a seguir por la empresa en caso de que alguno de los casos de uso descritos en el BCP sufra una interrupción.
## ¿Qué se necesita?
1. Definir cuáles son los procesos vitales de negocio.
2. Definir técnicas y tácticas para asegurar la continuidad de estos procesos.
3. Implementarlos en el documento de políticas de la empresa.
4. Capacitar y probar su ejecución.
5. Establecer mecanismos de mejor continua.
```
	General
	   |		Tácticas
	   |		Técnicas
	   v		Procedimientos
	Particular
```
# Business Impact Analysis
Este se refiere a una **evaluación** (en cuanto a **operación** y **económica**) realizada a la empresa para **determinar** qué **procesos** son los más **importantes** para el negocio y para **determinar** cuál sería el **impacto** en caso de darse una interrupción.
**MTD**: Maximun Tolerable Downtime
```
				|
				v
```
**RTO**: Recovery Time Objective
**RPO**: Recovery Point Objective (para sistemas digitales, refiriéndose a la información valiosa)

El BIA y BCP se centran en riesgos en procesos críticos (y en activos críticos en el DRP).

Otro posible nombre de la materia es "Paranoia".

La **resiliencia** es la capacidad de un sistema para enfrentar una crisis interna o externa y no solamente resistirla y resolverla efectivamente.

//Grafica

**Continuidad de Negocio (BC)**: Capacidad estratégica y táctica de la Organización para planificar y responder a los incidentes y las interrupciones del negocio con el fin de continuar con las operaciones de negocio a un nivel aceptable predefinido (ISO 22301).
**Disaster Recovery Plan (DRP)**: Un plan escrito de acción integral que establece los procedimientos y establece los procesos para los sistemas y requisitos que son necesarios para respaldar y restaurar el funcionamiento económico de una institución en el caso de una interrupción de T.I. 
**Gestión de la Continuidad de Negocio (BCM)**: Proceso de gestión integral que identifica las **amenazas potenciales** para una organización, así como los **impactos en las operaciones** que esas amenazas pudieran causar en caso de materializarse. Proporciona un marco para aumentar la **resistencia organizacional** con la capacidad para dar una respuesta efectiva que salvaguarde los intereses de sus grupos de interés clave, la reputación, la marca y las actividades que crean valor.

Incluye el Plan de Continuidad de Negocios (BCP) y el Plan de Recuperación de Desastre (DRP).
```
27001 -------- SGSI				  <-|
				|					|
	|-----------|------------|		|
	V			V			 V		|
Dominio 1	Dominio 2 °°° Dominio N	| Programa 
			  (BCM)					| de
				|					|-Seguridad
		|----------------|			| de la 
		v				 v			| Información
	   BCP 			  	DRP			|
		|							|
		v							|
	   BIA						  <-|
```
**Desastre**: Cualquier evento natural o hecho por el hombre que interrumpe las operaciones de un negocio de una manera tan significativa que se requiere un esfuerzo considerable y coordinado para lograr una recuperación.
## Desastres Naturales
**Geológicos**: Terremotos, Volcanes, Tsunamis, Deslizamientos y Hundimientos.
**Meteorológicos**: Huracanes, Tornados, Tormentas de viento, Granizo, Tormentas de hielo, Tormentas de nieve, Tormentas de lluvia y Relámpagos.
**Otros**: Avalanchas, Incendios, Inundaciones, Meteoros y meteoritos, Tormentas solares.
**Salud**:
## Desastres generados por el hombre
**Trabajo**: Huelga, Paros y desaceleraciones que interrumpen los servicios y suministros.
**Sociopolítico**: Guerras, Terrorismo, Sabotaje, Vandalismo, Disturbios civiles, Protestas, Manifestaciones, Ataques cibernéticos, Bloqueos.
**Materiales**: Incendios, Derrames de materiales peligrosos.
**Infraestructura**: Cortes de energía, Comunicaciones, Escasez de suministro de agua, Escasez de combustible, Lluvia radioactiva por accidentes en plantas de energía.
## Planes de Seguridad
```
	|----> Confidencialidad <----|
	|			   ʌ			 |
	|			   |			 |
	|			   v			 |
	|	  Modelo de Seguridad	 |
	|			ʌ 	   ʌ		 |
	v			|	   |		 v
Integridad -----|	   |----- Disponibilidad
	ʌ							 ʌ
	|----------------------------|
```
BDP y DRP apoyan **directamente** a la disponibilidad.
**BCP**: Actividades necesarias para garantizar la continuidad de los procesos críticos de negocio en una organización. 
- Personal, equipo e instalaciones alternas.
- Incluye conceptos que no son de T.I.

**DRP**: Evaluación, salvamento, reparación y restauración eventual de las instalaciones y sistemas dañados.
- Se centra en los sistemas de T.I.
## Estándares que abordan BCP y DRP
- **ISO 27001**: Requirements for Information Security Management Systems. Section 14 addresses business continuity management.
- **ISO 27002**: Code of Practice for Business Continuity Management.
- **ISO 22301**: Business Continuity Management Systems - Requirements.
- **NIST 800-34**:
	- Contingency Planning Guide for Information Technology Systems.
	- Seven step process for BCP and DRP projects.
	- From U.S. National Institute for Standards and Technology.
- **NFPA 1600**:
	- Standard on Disaster / Emergency Management and Business Continuity Programs.
	- From U.S. National Protection Association.
- **NFPA 1620**: Recommended Practices for Pre-Incident Planning
- **HIPAA**: Requires a documented and tested disaster recovery plan.
	- U.S. Health Insurance Portability and Accountability Act.

Los desastres no se pueden evitar, lo que se puede hacer es prevenir que nos agarre por sorpresa y desorganizados.
# Políticas de Seguridad
//Gráfica
## ¿Qué es una política?
Conjunto de requisitos definidos por los responsables directos o indirectos de un sistema que **indica en términos generales que está y qué no está permitido durante la operación general** de dicho sistema.

Una política de seguridad de la información es ...
## Características de las políticas
La política se refleja en una serie de **normas, reglamentos y protocolos a seguir, donde se definan las medidas a tomar para proteger la seguridad del sistema**.

Siempre hay que tener en cuenta que la seguridad **comienza y termina con personas**.

La política debe:
- Ser holística (cubrir todos los aspectos relacionados con la misma).
- Adecuarse a las necesidades y recursos.
- Ser atemporal. El tiempo en el que se aplica no debe de influir en su eficiencia y eficacia.
- Definir estrategias y criterios generales a adoptar en distintas funciones y actividades.
- Redactarse en un lenguaje sencillo y entendible sin sacrificar su precisión. La política debe de ser corta, clara y sencilla.
- Seguir un proceso de actualización periódica sujeto a los cambios organizacionales relevantes.

**Ejemplos**: Todos los empleados de nuevo ingreso deben aprobar el curso de seguridad CRP vigente.
- Corta, Clara, Precisa, Atemporal, Entendible por todos

Un dato personal identifica a una persona o hace identificable a una persona.
```
			|-> Edad					  |-> Gorra atrás
			|	Nombre		Hace 		  |	  Alto
Identifican |	Sexo		identificable |	  Camisa negra 
a una		|	Teléfono	a una 		  |	  Barba
persona		|	Correo		persona 	  |	  Participa
			|	Curp					  |-> Apellido
			|-> RFC
```
## Políticas de Continuidad de Negocio
Al BCP le importan los procesos de negocio críticos, si le importan los activos, pero los que están relacionados a procesos de negocio críticos. Es más común que una empresa tenga un DRP que un BCP. Es más común que una empresa empieza con un DRP y luego tenga un BCP.

El DRP se aplica en todos los aspectos de la compañía, no solo tecnologías y datos (en teoría si debiera de ser así, pero no lo es).

El BIA identifica procesos críticos generales para el BCP.

El BIA del DRP identifica activos críticos de tecnología o datos (aunque no debería).

## ¿Qué es continuidad de negocio?
Es la **capacidad** de una organización para **planificar**, **prepararse** y **mantener** sus funciones y **actividades esenciales** durante y después de **eventos disruptivos** o de emergencia que **interrumpan** o realenticen sus **servicios**.
Objetivos_
1. Continuar con los procesos críticos.
2. Reducir el impacto de cualquier incidente
**BC**: Capacidad de una organización para planificar y responder a los incidentes e interrupciones con el fin de continuar las operaciones críticas predefinidas.
- T.I.
- Recursos humanos
- Logística y organización
**DRP**: Plan de acción que establece los procedimientos y procesos necesarios para restaurar y respaldar el funcionamiento de una organización en caso de una interrupción de T.I.
- Tecnología
- Datos
## Política de Continuidad de Negocio
La Política de Continuidad de Negocio es un **conjunto de estrategias y procedimientos** que establecen un marco para **planificar y responder** ante **incidentes** que **interrumpan las operaciones**, con el objetivo de **minimizar su impacto** y **garantizar la rápida recuperación** de los **procesos críticos**, protegiendo los datos, la seguridad del personal y la reputación de la organización.

Debe estar alineado con las políticas corporativas de la organización.
## Definiciones Importantes
- **Business Continuity Plan (BCP)**: Plan integral para mantener operaciones críticas durante y después de un incidente.
- **Disaster Recovery Plan (DRP)**: Procedimientos específicos para restaurar sistemas tecnológicos después de un incidente.
- **Recovery Time Objective (RTO)**: Tiempo máximo aceptable para restaurar una función.
- **Recovery Point Objective (RPO)**: Máxima pérdida de datos aceptable medida en tiempo..
- **Business Impact Analysis (BIA)**: Evaluación del impacto de interrupciones en funciones críticas.
- **Crisis Management Team (CMT)**: Equipo responsable de coordinar la respuesta a crisis.
**ISO 22331**: Proporciona directrices para la **estrategia de continuidad del negocio**. Esta norma es aplicable a todas las organizaciones y se centra en la gestión de la continuidad del negocio. 

Los principios incluyen:
- **Identificar opciones de estrategia** de continuidad del negocio.
-  Seleccionar **capacidades apropiadas** basadas en los requisitos de continuidad del negocio.
- Garantizar la **idoneidad continua** de las estrategias de continuidad del negocio.
- Coordinar la **determinación de la estrategia** de continuidad del negocio y la selección efectiva dentro del programa de continuidad del negocio global.
**ISO 27001**: Se enfoca en la seguridad de la información, asegurando que los datos estén protegidos ante amenazas, interrupciones o pérdidas.

Dentro de esta estándar, la **continuidad del negocio** es un **componente clave** para garantizar la **disponibilidad de la información crítica** durante incidentes.
## Elementos clave de las Políticas de BC
- **Propósito**: Explica por qué existe la política. Es decir, deja claro cuál es la razón de ser de la política.
- **Alcance**: Define a que áreas, procesos o servicios aplica la política y quienes deben cumplirla.
- **Objetivos**: Establece lo que se busca lograr, proteger servicios esenciales, reducir el impacto de interrupciones y asegurar la recuperación.
- **Definiciones clave**: Aclara conceptos importantes (como RTO, MTD o interrupción) para que todos comprendan los términos usados.
- **Normas y lineamentos**: Se establecen las reglas generales para prevenir y gestionar interrupciones. Aquí es donde se definen las acciones obligatorias que deben seguirse.
- **Cumplimiento**: Describe las consecuencias de incumplir la política, busca fomentar la responsabilidad y el compromiso.
## Beneficios de Políticas de BC
- Mejora el manejo de riesgos.
	- Conocer los detalles a realizar, ayudan a la empresa a ser más resiliente.
- Fortalece la confianza de los inversores.
	- Las políticas protegen no solo a la organización, sino también el capital de ésta.
- Crear una buena reputación.
	- Una empresa segura, da confianza a clientes y socios.
