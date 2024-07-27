# GymProgressDB

## Base de datos Progreso Gimnasio MySql

<hr>
    <img src="https://ingeurbanismo.com/wp-content/uploads/2023/09/Gimnasio.png" alt="GYMPRGRESS" width="250px">
<hr>

## Descripción

Este repositorio contiene una base de datos estructurada de lo necesario para llevar el progreso de los usuarios de un gimnasio

## Contenido

La base de datos incluye:

- **OBJETIVOS_PERSONALES**: lista de los objetivos por los que los usuarios van al gimnasio.
- **PLANES**: Planes de entrenamiento disponibles en el gimnasio.
- **USUARIOS**: Información basica de los usuarios del gimnasio.
- **RUTINA**: Rutinas de ejercicios que forman parte de los planes de entrenamiento.
- **PROGRESO**: Progreso de los usuarios que asisten al gimnasio.
- **ENTRENADOR**: Información de los entrenadores del gimnasio.
- **ASIGNACIONES**: Asignacion de planes de entrenamiento a los usuarios.
- **EPS**: contiene información sobre las Entidades Prestadoras de Salud (EPS)
- **DIAS_SEMANA**:contiene información sobre los días de la semana

## Diagrama Entidad Relación

![alt text](/Imagenes/modelorelacional.jpg)

## Estructura de la Base de Datos

La base de datos está compuesta por las siguientes tablas:

### Tabla: `OBJETIVOS_PERSONALES`

| NOMBRE DEL CAMPO  | TIPO DE DATO       | DESCRIPCIÓN                        |
| ------ | ------------ | ------------------------------------ |
| ID_OBJETIVO     | INT(5)         | Identificador único del objetivo |
| NOMBRE_OBJETIVO| VARCHAR(100) | Nombre del objetivo            |
| DESCRIPCION_OBJETIVO| VARCHAR(100) | Descripcion del objetivo            |

### Tabla: `EPS`

| NOMBRE DEL CAMPO  | TIPO DE DATO       | DESCRIPCIÓN                        |
| ------ | ------------ | ------------------------------------ |
| ID_EPS     | INT(2)         | Identificador único de la EPS |
| NOMBRE_EPS| VARCHAR(100) | Nombre oficial de la EPS            |
| DIRECCION_EPS| VARCHAR(100) | Dirección física de la sede principal de la EPS         |
| TELEFONO_EPS| VARCHAR(15) | Número de teléfono de contacto de la EPS         |
| EMAIL_EPS| VARCHAR(100) | Correo electrónico de contacto de la EPS         |
| FECHACREACION_EPS| DATE | Fecha en que se creó la EPS        |
| ESTADO_EPS| VARCHAR(50) | estado actual de la EPS, que puede ser "activo", "inactivo", "suspendido"         |

### Tabla: `USUARIOS`

| NOMBRE DEL CAMPO  | TIPO DE DATO       | DESCRIPCIÓN                        |
| ------ | ------------ | ------------------------------------ |
| ID_USER |	INT(9)	| identificador unico del usuario |
| DOCUMENTO_USER |	INT(20) |	Documento de identificacion del usuario |
| NOMBRE_USER |	VARCHAR(100) |	nombre completo del usuario | 
| FECHA_NACIMIENTO_USER |	DATE |	Fecha de nacimiento del usuario |
| EMAIL_USER |	VARCHAR(100) |	correo electronico del usuario |
| TELEFONO_USER |	VARCHAR(15) |	Numero de telefono del usuario |
| DIRECCION_USER |	VARCHAR(200) |	direccion del usuario |
| FECHAINGRESO_USER |	DATE |	fecha de ingreso al gimnasio del usuario |
| ID_EPS |	INT(2) |	identificador unico de la eps a la que pertenece el usuario |
| PESO_USER |	DECIMAL(3,0) |	peso con el que ingresa el usuario al gimnasio |
| ID_OBJETIVO |	INT(5) |	identificador unico del objetivo personal de los usuarios para ingresar al gimnasio |

### Tabla: `PLANES`

| NOMBRE DEL CAMPO  | TIPO DE DATO       | DESCRIPCIÓN                        |
| ------ | ------------ | ------------------------------------ |
| ID_PLAN |	INT(3) |	Identificador unico del plan |
| NOMBRE_PLAN |	VARCHAR(100) |	nombre del plan |
| DESCRIPCION_PLAN |	TINYTEXT |	descripcion de plan |
| DURACIONSEMANA_PLAN |	INT(3) |	duracion en semanas del plan |
| COSTO_PLAN |	DECIMAL(10,0) |	costo del plan |


## Ejemplos de Consultas


### Resultado:

