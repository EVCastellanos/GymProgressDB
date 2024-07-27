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


## Ejemplos de Consultas


### Resultado:

