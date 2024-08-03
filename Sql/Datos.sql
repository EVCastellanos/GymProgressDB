---------------------------------------------------------
--Datos de prueba 
--Base de datos GymProgress
--Version 1.0
--Material de aprendizaje Mysql
--Julio 2024
---------------------------------------------------------

INSERT INTO `ASIGNACIONES` (`ID_ASIGNACION`, `FECHAINICIO_ASIGNACION`, `FECHAFIN_ASIGNACION`, `ID_USER`, `ID_PLAN`, `ID_ENTRENADOR`) VALUES
	(001, '2023-07-01', '2023-07-29', 000000001, 001, 001),
	(002, '2023-07-02', '2023-08-27', 000000002, 002, 002),
	(003, '2023-07-03', '2023-09-23', 000000003, 003, 003),
	(004, '2023-07-04', '2023-08-15', 000000004, 004, 004),
	(005, '2023-07-05', '2023-09-13', 000000005, 005, 005),
	(006, '2023-07-06', '2023-08-31', 000000006, 006, 006),
	(007, '2023-07-07', '2023-09-30', 000000007, 007, 007),
	(008, '2023-07-08', '2023-08-05', 000000008, 008, 008),
	(009, '2023-07-09', '2023-09-17', 000000009, 009, 009),
	(010, '2023-07-10', '2023-08-19', 000000010, 010, 010);


INSERT INTO `ENTRENADORES` (`ID_ENTRENADOR`, `NOMBRE_ENTRENADOR`, `EMAIL_ENTRENADOR`, `TELEFONO_ENTRENADOR`, `ESPECIALIDAD_ENTRENADOR`, `ID_EPS`) VALUES
	(001, 'Javier Torres', 'javier.torres@mail.com', '1234500000', 'Perdida de Peso', 1),
	(002, 'Claudia Díaz', 'claudia.diaz@mail.com', '2345600000', 'Ganancia Muscular', 7),
	(003, 'Roberto Ruiz', 'roberto.ruiz@mail.com', '3456700000', 'Resistencia', 3),
	(004, 'Fernanda Hernández', 'fernanda.hernandez@mail.com', '4567800000', 'Flexibilidad', 2),
	(005, 'Manuel García', 'manuel.garcia@mail.com', '5678900000', 'Fuerza', 1),
	(006, 'Teresa Blanco', 'teresa.blanco@mail.com', '6789000000', 'Cardio', 1),
	(007, 'Sergio Gil', 'sergio.gil@mail.com', '7890100000', 'Mixto', 1),
	(008, 'Elena Castillo', 'elena.castillo@mail.com', '8901200000', 'Perdida de Peso', 2),
	(009, 'Francisco Rojas', 'francisco.rojas@mail.com', '9012300000', 'Ganancia Muscular', 3),
	(010, 'Isabel Romero', 'isabel.romero@mail.com', '123400000', 'Resistencia', 4);

INSERT INTO `EPS` (`ID_EPS`, `NOMBRE_EPS`, `DIRECCION_EPS`, `TELEFONO_EPS`, `EMAIL_EPS`, `FECHACREACION_EPS`, `ESTADO_EPS`) VALUES
	(01, 'Salud Total EPS', 'Calle 123 #45-67 Bogotá', '3101234567', 'contacto@saludtotal.com', '2000-01-15', 'activo'),
	(02, 'Sura EPS', 'Carrera 10 #20-30 Medellín', '3102345678', 'info@sura.com', '1999-03-22', 'activo'),
	(03, 'Sanitas EPS', 'Avenida 30 #15-20 Cali', '3203456789', 'atencion@sanitas.com', '2002-07-10', 'activo'),
	(04, 'Nueva EPS', 'Calle 45 #10-15 Barranquilla', '3114567890', 'servicio@nuevoeps.com', '2005-11-05', 'activo'),
	(05, 'Coomeva EPS', 'Carrera 12 #30-40 Cartagena', '3125678901', 'coomeva@coomeva.com', '2001-09-18', 'activo'),
	(06, 'Famisanar EPS', 'Calle 50 #15-25 Bucaramanga', '3136789012', 'contacto@famisanar.com', '2003-04-12', 'activo'),
	(07, 'Compensar EPS', 'Carrera 15 #40-50 Manizales', '3147890123', 'info@compensar.com', '2004-12-20', 'activo'),
	(08, 'Cafesalud EPS', 'Avenida 60 #10-20 Pereira', '3158901234', 'atencion@cafesalud.com', '2006-06-30', 'inactivo'),
	(09, 'Medimas EPS', 'Calle 70 #20-30 Cúcuta', '3169012345', 'servicio@medimas.com', '2007-02-25', 'activo'),
	(10, 'Cruz Blanca EPS', 'Carrera 20 #50-60 Santa Marta', '3170123456', 'contacto@cruzblanca.com', '2008-08-15', 'suspendido');


INSERT INTO `OBJETIVOS_PERSONALES` (`ID_OBJETIVO`, `NOMBRE_OBJETIVO`, `DESCRIPCION_OBJETIVO`) VALUES
	(00001, 'Perder peso', 'Reducir el porcentaje de grasa corporal y mejorar la composicion corporal'),
	(00002, 'Ganar masa muscular', 'Aumentar el tamaño y la fuerza muscular mediante entrenamiento de resistencia'),
	(00003, 'Mejorar la resistencia cardiovascular', 'Incrementar la capacidad pulmonar y la resistencia a través de ejercicios aerobicos como correr nadar o montar en bicicleta'),
	(00004, 'Aumentar la flexibilidad', 'Mejorar la amplitud de movimiento de las articulaciones mediante estiramientos y ejercicios especificos'),
	(00005, 'Mejorar la salud general', 'Reducir el riesgo de enfermedades cronicas como la diabetes o enfermedades cardiovasculares mediante ejercicio regular'),
	(00006, 'Incrementar la fuerza', 'Mejorar la capacidad de levantar pesos y realizar actividades cotidianas con mayor facilidad'),
	(00007, 'Reducir el estres', 'Utilizar el gimnasio como una forma de liberar tensiones y mejorar el bienestar emocional'),
	(00008, 'Mejorar la postura', 'Fortalecer los musculos del core y trabajar en ejercicios de correccion postural para mantener una alineacion adecuada del cuerpo'),
	(00009, 'Entrenar para una competicion o evento específico', 'Prepararse fisicamente para un evento deportivo como una carrera una competicion de levantamiento de pesas\n'),
	(00010, 'Socializar y disfrutar del ambiente', 'Utilizar el gimnasio como un lugar para conectar con otras personas que comparten intereses similares y disfrutar del ambiente activo y saludable');



INSERT INTO `PLANES` (`ID_PLAN`, `NOMBRE_PLAN`, `DESCRIPCION_PLAN`, `DURACIONSEMANA_PLAN`, `COSTO_PLAN`) VALUES
	(001, 'Basico', 'Plan basico para principiantes', 4, 50000),
	(002, 'Intermedio', 'Plan intermedio para usuarios con experiencia', 8, 100000),
	(003, 'Avanzado', 'Plan avanzado para usuarios avanzados', 12, 150000),
	(004, 'Perdida de Peso', 'Plan especifico para perdida de peso', 6, 80000),
	(005, 'Ganancia Muscular', 'Plan especifico para ganancia muscular', 10, 120000),
	(006, 'Resistencia', 'Plan para mejorar la resistencia', 8, 90000),
	(007, 'Fuerza', 'Plan para aumentar la fuerza', 12, 140000),
	(008, 'Flexibilidad', 'Plan para mejorar la flexibilidad', 4, 60000),
	(009, 'Mixto', 'Plan combinado de fuerza y resistencia', 10, 130000),
	(010, 'Cardio', 'Plan enfocado en ejercicios cardiovasculares', 6, 70000);



INSERT INTO `RUTINAS` (`ID_RUTINA`, `NOMBRE_RUTINA`, `DESCRIPCION_RUTINA`, `DIASEMANA_RUTINA`, `ID_PLAN`) VALUES
	(001, 'Rutina Basica 1', 'Ejercicios basicos para principiantes', 1, 1),
	(002, 'Rutina Basica 2', 'Continuación de ejercicios basicos', 3, 1),
	(003, 'Rutina Intermedia 1', 'Ejercicios intermedios', 1, 2),
	(004, 'Rutina Intermedia 2', 'Continuación de ejercicios intermedios', 3, 2),
	(005, 'Rutina Avanzada 1', 'Ejercicios avanzados', 2, 3),
	(006, 'Rutina Avanzada 2', 'Continuación de ejercicios avanzados', 4, 3),
	(007, 'Rutina Perdida Peso 1', 'Ejercicios para pérdida de peso', 2, 4),
	(008, 'Rutina Perdida Peso 2', 'Continuación de ejercicios para perdida de peso', 4, 4),
	(009, 'Rutina Ganancia 1', 'Ejercicios para ganancia muscular', 1, 5),
	(010, 'Rutina Ganancia 2', 'Continuacion de ejercicios para ganancia muscular', 3, 5);


INSERT INTO `TOMA_MEDIDAS` (`ID_MEDIDA`, `GRASA_CORPORAL`, `MASA_MUSCULAR`, `CIRCUNFERENCIA_CINTURA`, `CIRCUNFERENCIA_CADERA`, `CIRCUNFERENCIA_BRAZO`, `CIRCUNFERENCIA_MUSLO`, `OBSERVACIONES_MEDIDA`, `FECHA_MEDIDA`, `PESO`, `IMC`, `ID_RUTINA`, `ID_USER`) VALUES
	(01, 17, 40, 60, 95, 29, 35, NULL, '2023-07-01', 71, 30, 0001, 000000001),
	(02, 23, 30, 58, 100, 29, 36, NULL, '2023-07-02', 65, 18, 0002, 000000002),
	(03, 20, 45, 90, 110, 30, 38, NULL, '2023-07-03', 80, 24, 0003, 000000003),
	(04, 25, 35, 57, 90, 33, 32, NULL, '2023-07-04', 56, 25, 0004, 000000004),
	(05, 22, 48, 90, 110, 30, 38, NULL, '2023-07-05', 90, 18, 0005, 000000005),
	(06, 21, 38, 58, 108, 29, 36, NULL, '2023-07-06', 68, 16, 0006, 000000006),
	(07, 16, 50, 100, 110, 30, 38, NULL, '2023-07-07', 85, 21, 0007, 000000007),
	(08, 26, 36, 65, 90, 33, 32, NULL, '2023-07-08', 61, 23, 0008, 000000008),
	(09, 24, 42, 65, 95, 29, 35, NULL, '2023-07-09', 75, 24, 0009, 000000009),
	(10, 30, 32, 60, 86, 29, 32, NULL, '2023-07-10', 65, 30, 0010, 000000010);



INSERT INTO `USUARIOS` (`ID_USER`, `DOCUMENTO_USER`, `NOMBRE_USER`, `FECHA_NACIMIENTO_USER`, `EMAIL_USER`, `TELEFONO_USER`, `DIRECCION_USER`, `GENERO_USER`, `ALTURA_USER`, `FECHAINGRESO_USER`, `ID_EPS`, `PESO_USER`, `ID_OBJETIVO`) VALUES
	(000000001, 91151756, 'Juan Perez', '1990-01-15', 'juan.perez@mail.com', '1234567890', 'Calle 123 Floridablanca', 'Masculino', 160, '2023-01-10', 1, 81, 1),
	(000000002, 1095804888, 'Maria Lopez', '1985-03-22', 'maria.lopez@mail.com', '2345678901', 'Calle 456 Giron', 'Femenino', 165, '2023-02-15', 1, 85, 3),
	(000000003, 95478965, 'Carlos Sanchez', '1992-06-30', 'carlos.sanchez@mail.com', '3456789012', 'Calle 789 Piedecuesta', 'Masculino', 168, '2023-03-20', 1, 100, 6),
	(000000004, 63456789, 'Ana Gomez', '1988-11-11', 'ana.gomez@mail.com', '4567890123', 'Calle 101 Bucaramanga', 'Femenino', 172, '2023-04-05', 1, 91, 7),
	(000000005, 96159753, 'Luis Fernandez', '1995-07-25', 'luis.fernandez@mail.com', '5678901234', 'Calle 202 Lebrija', 'Masculino', 151, '2023-05-10', 1, 90, 9),
	(000000006, 1110147852, 'Laura Martinez', '1991-02-18', 'laura.martinez@mail.com', '6789012345', 'Calle 303 Bucaramanga', 'Femenino', 158, '2023-06-15', 5, 70, 1),
	(000000007, 91789654, 'Pablo Torres', '1987-08-09', 'pablo.torres@mail.com', '7890123456', 'Calle 404 Piedecuesta', 'Masculino', 170, '2023-07-20', 6, 95, 1),
	(000000008, 63123654, 'Marta Ramirez', '1993-12-05', 'marta.ramirez@mail.com', '8901234567', 'Calle 505 Giron', 'Femenino', 172, '2023-08-25', 3, 101, 1),
	(000000009, 1105789633, 'Andrés Jimenez', '1989-04-17', 'andres.jimenez@mail.com', '9012345678', 'Calle 606 Floridablanca', 'Masculino', 169, '2023-09-30', 4, 110, 2),
	(000000010, 1095852147, 'Sofia Cruz', '1994-10-23', 'sofia.cruz@mail.com', '1234567809', 'Calle 707 Floridablanca', 'Femenino', 170, '2023-10-10', 3, 85, 6);
