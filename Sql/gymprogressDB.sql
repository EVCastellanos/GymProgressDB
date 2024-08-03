----------------------------------------------------------
--Hecho por: Edith Viviana Castellanos
--Evidencias del aprendizaje 
--Julio 2024
----------------------------------------------------------


CREATE TABLE IF NOT EXISTS `ASIGNACIONES` (
  `ID_ASIGNACION` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico de las asignaciones',
  `FECHAINICIO_ASIGNACION` date NOT NULL COMMENT 'Fecha inicio del plan',
  `FECHAFIN_ASIGNACION` date NOT NULL COMMENT 'Fecha final del plan',
  `ID_USER` int(9) unsigned zerofill NOT NULL COMMENT 'Identificador unico del usuario',
  `ID_PLAN` int(3) unsigned zerofill NOT NULL COMMENT 'Identificador unico del plan',
  `ID_ENTRENADOR` int(3) unsigned zerofill NOT NULL COMMENT 'Identificador unico del entrenador',
  PRIMARY KEY (`ID_ASIGNACION`),
  KEY `FK_ASIGNACIONES_USUARIOS` (`ID_USER`),
  KEY `FK_ASIGNACIONES_PLANES` (`ID_PLAN`),
  KEY `FK_ASIGNACIONES_ENTRENADOR` (`ID_ENTRENADOR`),
  CONSTRAINT `FK_ASIGNACIONES_ENTRENADOR` FOREIGN KEY (`ID_ENTRENADOR`) REFERENCES `ENTRENADORES` (`ID_ENTRENADOR`),
  CONSTRAINT `FK_ASIGNACIONES_PLANES` FOREIGN KEY (`ID_PLAN`) REFERENCES `PLANES` (`ID_PLAN`),
  CONSTRAINT `FK_ASIGNACIONES_USUARIOS` FOREIGN KEY (`ID_USER`) REFERENCES `USUARIOS` (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Asignacion de planes de entrenamiento a los usuarios';


CREATE TABLE IF NOT EXISTS `ENTRENADORES` (
  `ID_ENTRENADOR` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico del entrenador',
  `NOMBRE_ENTRENADOR` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL COMMENT 'Nombre completo del entrenador',
  `EMAIL_ENTRENADOR` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci DEFAULT NULL COMMENT 'Correo eelectronico del entrenador',
  `TELEFONO_ENTRENADOR` varchar(15) CHARACTER SET utf16 COLLATE utf16_spanish_ci DEFAULT NULL COMMENT 'Numero de telefono del entrenador',
  `ESPECIALIDAD_ENTRENADOR` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL COMMENT 'especialidad del entrenador ',
  `ID_EPS` int(2) unsigned NOT NULL DEFAULT 0 COMMENT 'EPS a la que pertenece el entrenador',
  PRIMARY KEY (`ID_ENTRENADOR`),
  KEY `FK_ENTRENADOR_EPS` (`ID_EPS`),
  CONSTRAINT `FK_ENTRENADOR_EPS` FOREIGN KEY (`ID_EPS`) REFERENCES `EPS` (`ID_EPS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Información de los entrenadores del gimnasio';


CREATE TABLE IF NOT EXISTS `EPS` (
  `ID_EPS` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico de la EPS',
  `NOMBRE_EPS` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL COMMENT 'Nombre oficial de la EPS',
  `DIRECCION_EPS` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci DEFAULT NULL COMMENT 'Direccion fisica de la sede principal de la EPS',
  `TELEFONO_EPS` varchar(15) CHARACTER SET utf16 COLLATE utf16_spanish_ci DEFAULT NULL COMMENT 'Numero de telefono de contacto de la EPS',
  `EMAIL_EPS` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci DEFAULT NULL COMMENT 'Correo electronico de contacto EPS',
  `FECHACREACION_EPS` date DEFAULT NULL COMMENT 'Fecha en que se creo la EPS',
  `ESTADO_EPS` varchar(50) CHARACTER SET utf16 COLLATE utf16_spanish_ci DEFAULT NULL COMMENT 'Estado actual de la EPS, puede ser Activo, Inactivo, Suspendido',
  PRIMARY KEY (`ID_EPS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Contiene información sobre las entidades promotoras de salud EPS que brindan servicios de atencion medica a los afiliados en su sistema de salud';


CREATE TABLE IF NOT EXISTS `OBJETIVOS_PERSONALES` (
  `ID_OBJETIVO` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del objetivo personal',
  `NOMBRE_OBJETIVO` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL COMMENT 'Definición de nombre de objetivos personales',
  `DESCRIPCION_OBJETIVO` varchar(200) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL COMMENT 'Descripción detallada del objetivo personal',
  PRIMARY KEY (`ID_OBJETIVO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Contiene el listado de los objetivos por los que los usuarios van al gimnasio';


CREATE TABLE IF NOT EXISTS `PLANES` (
  `ID_PLAN` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico del plan',
  `NOMBRE_PLAN` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL COMMENT 'Nombre del plan',
  `DESCRIPCION_PLAN` tinytext CHARACTER SET utf16 COLLATE utf16_spanish_ci DEFAULT NULL COMMENT 'Descripcion del plan',
  `DURACIONSEMANA_PLAN` int(3) DEFAULT NULL COMMENT 'Duración del plan en semanas',
  `COSTO_PLAN` decimal(10,0) DEFAULT NULL COMMENT 'Costo del plan',
  PRIMARY KEY (`ID_PLAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Planes de entrenamiento disponibles en el gimnasio';


CREATE TABLE IF NOT EXISTS `RUTINAS` (
  `ID_RUTINA` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico de la rutina',
  `NOMBRE_RUTINA` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci DEFAULT NULL COMMENT 'Nombre de la rutina',
  `DESCRIPCION_RUTINA` varchar(200) CHARACTER SET utf16 COLLATE utf16_spanish_ci DEFAULT NULL COMMENT 'Descripcion de la rutina',
  `DIASEMANA_RUTINA` int(1) unsigned NOT NULL COMMENT 'Dia de la semana en el que se realiza la rutina. 1 es lunes y7 domingo',
  `ID_PLAN` int(3) unsigned NOT NULL COMMENT 'identificador unico del plan ',
  PRIMARY KEY (`ID_RUTINA`),
  KEY `FK_RUTINA_PLANES` (`ID_PLAN`),
  CONSTRAINT `FK_RUTINA_PLANES` FOREIGN KEY (`ID_PLAN`) REFERENCES `PLANES` (`ID_PLAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Rutinas de ejercicios que forman parte de los planes de entrenamiento';


CREATE TABLE IF NOT EXISTS `TOMA_MEDIDAS` (
  `ID_MEDIDA` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico de la toma de medidas',
  `GRASA_CORPORAL` decimal(10,0) NOT NULL COMMENT 'valor medida porcentaje de grasa corporal en la fecha de progreso',
  `MASA_MUSCULAR` decimal(10,0) NOT NULL COMMENT 'Valor medida porcentaje de masa muscular en la fecha de toma de progreso',
  `CIRCUNFERENCIA_CINTURA` decimal(10,0) NOT NULL COMMENT 'Medicion de la cintura en la fecha del progreso',
  `CIRCUNFERENCIA_CADERA` decimal(10,0) NOT NULL COMMENT 'Medicion de la cadera en la fecha de progreso',
  `CIRCUNFERENCIA_BRAZO` decimal(10,0) NOT NULL COMMENT 'Medicion del brazo al momento de la toma de progreso',
  `CIRCUNFERENCIA_MUSLO` decimal(10,0) NOT NULL COMMENT 'Medicion del muslo al momento de la toma de progreso',
  `OBSERVACIONES_MEDIDA` varchar(500) DEFAULT NULL COMMENT 'Observaciones sobre los tipos de medidas para valuar el estado fisico del usuario',
  `FECHA_MEDIDA` date NOT NULL COMMENT 'Fecha en la que se registran las medidas el dia de la toma de progreso del usuario',
  `PESO` decimal(10,0) NOT NULL COMMENT 'Peso segun la fecha de la toma de medidas y progreso',
  `IMC` decimal(10,0) NOT NULL COMMENT 'Indice de masa corporal segun la fecha de la toma de muestra del progreso',
  `ID_PROGRESO` int(4) unsigned zerofill DEFAULT NULL COMMENT 'Identificador unico del progreso',
  `ID_USER` int(9) unsigned zerofill DEFAULT NULL COMMENT 'Identificador unico del usuario',
  PRIMARY KEY (`ID_MEDIDA`),
  KEY `FK_TOMA_MEDIDAS_PROGRESO` (`ID_PROGRESO`),
  KEY `FK_TOMA_MEDIDAS_USUARIOS` (`ID_USER`),
  CONSTRAINT `FK_TOMA_MEDIDAS_PROGRESO` FOREIGN KEY (`ID_PROGRESO`) REFERENCES `PROGRESOS` (`ID_PROGRESO`),
  CONSTRAINT `FK_TOMA_MEDIDAS_USUARIOS` FOREIGN KEY (`ID_USER`) REFERENCES `USUARIOS` (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Registro de las medidas fisicas de los usuarios al momento de registrar el progreso en el gimnasio';


CREATE TABLE IF NOT EXISTS `USUARIOS` (
  `ID_USER` int(9) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico del usuario',
  `DOCUMENTO_USER` int(20) NOT NULL COMMENT 'Documento de identificacion del usuario',
  `NOMBRE_USER` varchar(100) NOT NULL COMMENT 'Nombre completo del usuaio',
  `FEHA_NACIMIENTO_USER` date NOT NULL COMMENT 'Fecha de nacimiento del usuario',
  `EMAIL_USER` varchar(100) DEFAULT NULL COMMENT 'Correo electronico del usuario',
  `TELEFONO_USER` varchar(15) DEFAULT NULL COMMENT 'Numero de telefono usuario',
  `DIRECCION_USER` varchar(200) DEFAULT NULL COMMENT 'Dirección de residencia usuario',
  `GENERO_USER` varchar(50) NOT NULL COMMENT 'Genero del usuario',
  `ALTURA_USER` decimal(10,0) NOT NULL DEFAULT 0 COMMENT 'Altura en metros del usuario',
  `FECHAINGRESO_USER` date NOT NULL COMMENT 'Fecha en la que ingreso el usuario al gimnasio',
  `ID_EPS` int(2) unsigned NOT NULL COMMENT 'Eps a la que pertenece el usuario',
  `PESO_USER` decimal(3,0) unsigned NOT NULL COMMENT 'Peso del usuario al momento del ingreso',
  `ID_OBJETIVO` int(5) unsigned NOT NULL COMMENT 'Identificador de los  bjetivos personales de los usuarios para asistir al gym',
  PRIMARY KEY (`ID_USER`),
  UNIQUE KEY `DOCUMENTO_USER` (`DOCUMENTO_USER`),
  KEY `FK_USUARIOS_OBJETIVOS_PERSONALES` (`ID_OBJETIVO`),
  KEY `FK_USUARIOS_EPS` (`ID_EPS`),
  CONSTRAINT `FK_USUARIOS_EPS` FOREIGN KEY (`ID_EPS`) REFERENCES `EPS` (`ID_EPS`),
  CONSTRAINT `FK_USUARIOS_OBJETIVOS_PERSONALES` FOREIGN KEY (`ID_OBJETIVO`) REFERENCES `OBJETIVOS_PERSONALES` (`ID_OBJETIVO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci COMMENT='Información basica de los usuarios del gimnasio';

