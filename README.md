# GymProgressDB

## Base de datos Progreso Gimnasio MySql

<hr>
    <img src="https://www.gimnasiosbarcelona.org/wp-content/uploads/2018/08/centros_crossfit_barcelona.jpg" alt="GYMPRGRESS" width="650px">
<hr>

## Descripción

Este repositorio contiene una base de datos estructurada de lo necesario para llevar el progreso de los usuarios de un gimnasio

## Contenido

La base de datos incluye:

- **OBJETIVOS_PERSONALES**: lista de los objetivos por los que los usuarios van al gimnasio.
- **PLANES**: Planes de entrenamiento disponibles en el gimnasio.
- **USUARIOS**: Información basica de los usuarios del gimnasio.
- **RUTINAS**: Rutinas de ejercicios que forman parte de los planes de entrenamiento.
- **ENTRENADORES**: Información de los entrenadores del gimnasio.
- **ASIGNACIONES**: Asignacion de planes de entrenamiento a los usuarios.
- **EPS**: contiene información sobre las Entidades Prestadoras de Salud (EPS)
- **TOMA_MEDIDAS**:contiene los registros de las medidas fisicas de los usuarios al momento de registrar el progreso en el gimnasio

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
| GENERO_USER |	VARCHAR(50) |	Genero del usuario |
| ALTURA_USER |	DECIMAL(10,0) |	Medida de la altura del usuario en metros |
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

### Tabla: `ENTRENADORES`

| NOMBRE DEL CAMPO  | TIPO DE DATO       | DESCRIPCIÓN |
| ------ | ------------ | ------------------------------------ |
| ID_ENTRENADOR |	INT(3) |	identificador unico del entrenador |
| NOMBRE_ENTRENADOR |	VARCHAR(100) |	Nombre completo del entrenador |
| EMAIL_ENTRENADOR |	VARCHAR(100) |	correo electronico del entrenador |
| TELEFONO_ENTRENADOR |	VARCHAR(15) |	Numero de telefono del entrenador |
| ESPECIALIDAD_ENTRENADOR |	VACHAR(100) |	Especialidad del entrenador |
| ID_EPS |	INT(2) |	identificador unico de la eps |


### Tabla: `RUTINAS`
| NOMBRE DEL CAMPO  | TIPO DE DATO       | DESCRIPCIÓN  |
| ------ | ------------ | ------------------------------------ |
| ID_RUTINA |	INT(3) |	Identificador unico de la rutina |
| NOMBRE_RUTINA |	VARCHAR(100) |	nombre de la rutina |
| DESCRIPCION_RUTINA |	VARCHAR(200) |	descripcion de la rutina |
| DIA_SEMANA |	INT(1) |	identificador unico del dia |
| ID_PLAN |	INT(3) |	identificador unico del plan |


### Tabla: `ASIGNACIONES`

| NOMBRE DEL CAMPO  | TIPO DE DATO       | DESCRIPCIÓN  |
| ------ | ------------ | ------------------------------------ |
|ID_ASIGNACION|	INT(3)	|Identificador unico de la asignacion|
|FECHAINICIO_ASIGNACION	|DATE	|fecha de inicio del plan|
|FECHAFIN_ASIGNACION|	DATE	|fecha final del plan|
|ID_USER|	INT(9)	|identificador unico del usuario|
|ID_PLAN|	INT(3)	|identificador unico del plan|


### Tabla: `TOMA_MEDIDAS`

| NOMBRE DEL CAMPO  | TIPO DE DATO       | DESCRIPCIÓN  |
| ------ | ------------ | ------------------------------------ |
|ID_MEDIDA|	INT(2)	|Identificador unico de las medidas|
|GRASA_CORPORAL	|DECIMAL(10,0)	|Valor del porcentaje de grasa corportal|
|MASA_MUSCULAR|	DECIMAL(10,0)	|Valor del porcentaje de masa muscular|
|CIRCUNFERENCIA_CINTURA|	DECIMAL(10,0)	|Medicion de la cintura|
|CIRCUNFERENCIA_CADERA|	DECIMAL(10,0)	|Medicion de la cadera|
|CIRCUNFERENCIA_BRAZO|	DECIMAL(10,0)	|Medicion del brazo|
|CIRCUNFERENCIA_MUSLO|	DECIMAL(10,0)	|Medicion del muslo|
|OBSERVACIONES_MEDIDA|	VARCHAR(500)	|Observaciones sobre las medidas|
|FECHA_MEDIDA|	DATE	|Fecha en la que se realiza la toma de medadidas|
|PESO|	DECIMAL(10,0)	|Peso del usuario en el momento de la toma de medida|
|IMC|	DECIMAL(10,0)	|Indice de masa corportal del usuario al momento de la toma de medida|
|ID_RUTINA|	INT(3)	|Identificador unico del progreso|
|ID_USER|	INT(9)	|Identificador unico del usuario|

