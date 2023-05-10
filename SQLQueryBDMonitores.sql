-- DDL(lenguaje de definición de datos) 

create database BDMonitores
go

use BDMonitores
go

-- Crear tabla Estudiantes
CREATE TABLE Estudiantes (
	ID_estudiante int PRIMARY KEY,
	IDUCA nvarchar(9) not null unique,
	Nombre nvarchar(50),
	Apellido nvarchar(50),
	FechaNac datetime,
	Correo_electronico nvarchar(100),
	Telefono nvarchar(20),
	Carrera nvarchar(50),
	Activo bit default 'true'
);

-- Crear tabla Clases
CREATE TABLE Clases (
	ID_clase int PRIMARY KEY,
	Codigo_clase nvarchar(20) unique not null,
	Nombre_clase nvarchar(50) not null,
	Horario nvarchar(50)
);

-- Crear tabla Monitores
CREATE TABLE Monitores (
	ID_monitor int PRIMARY KEY,
	ID_estudiante int,
	ID_clase int,
	Anio_en_curso int,
	Semestre_en_curso nvarchar(20),
	FOREIGN KEY (ID_estudiante) REFERENCES Estudiantes(ID_estudiante),
	FOREIGN KEY (ID_clase) REFERENCES Clases(ID_clase)
);

-- DML(lenguaje de manipulación de datos)

-- 1.	Inserte 40 registros en la tabla Estudiantes.

INSERT INTO Estudiantes(ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera) VALUES
(1, N'000033653', N'JoséCarlos', N'Pérez', '30/05/2004', N'jose.perez14734@est.uca.edu.ni', N'8724-5689', N'Ing. Sistemas'), 
(2, N'000033654', N'Lía', N'Ramírez', '14/11/2004', N'lia.ramirez15043@est.uca.edu.ni', N'8243-0066', N'Ing. Sistemas'), 
(3, N'000033655', N'Maria', N'Lopez', '7/06/2005', N'maria.lopez78897@est.uca.edu.ni', N'8877-6654', N'Arquitectura'),
(4, N'000033656', N'Andrea', N'Nuñez', '13/04/2005', N'andrea.nunez75698@est.uca.edu.ni', N'8499-0012', N'Ing. Industrial'),
(5, N'000033657', N'Henry', N'Reyes', '5/04/2002', N'henry.reyes78961@est.uca.edu.ni', N'8498-1047', N'Ing. Sistemas'),
(6, N'000033658', N'Carlos', N'Pérez', '24/12/2000', N'carlos.perez78965@est.uca.edu.ni', N'8776-5432', N'Ing. Civil'),
(7, N'000033659', N'Aisha', N'Árevalo', '13/06/2004', N'aisha.arevalo14563@est.uca.edu.ni', N'8855-1144', N'Diseño Gráfico'),
(8, N'000033660', N'Carlos', N'Centeno','7/07/2005', N'carlos.centeno13569@est.uca.edu.ni', N'8355-1122', N'Ing. Industrial'),
(9, N'000033661', N'Bryan', N'Ortuño', '17/10/2004', N'bryan.ortuño17896@est.uca.edu.ni', N'8123-4567', N'Ing. Sistemas'),
(10, N'000033662', N'Maria', N'Gonzales','15/12/2003', N'maria.gonzales15693@est.uca.edu.ni', N'8276-3451', N'Arquitectura'),
(11, N'000033663', N'Marcelo', N'Rodriguez','30/08/2001', N'marcelo.rodriguez89653@est.uca.edu.ni', N'8555-1234', N'Diseño Gráfico'),
(12, N'000033664', N'Adac', N'Quiroz', '5/05/2005', N'adac.quiroz14786@est.uca.edu.ni', N'8399-4321', N'Derecho'),
(13, N'000033665', N'Abigail', N'Rocha', '20/06/2002', N'abigail.rocha58963@est.uca.edu.ni', N'8399-4321', N'Derecho'),
(14, N'000033666', N'Josue', N'Romero','11/12/2003', N'josue.romero45693@est.uca.edu.ni', N'7845-1234', N'Psicología'),
(15, N'000033667', N'Osmar', N'Mora','5/08/2001', N'osmar.mora45678@est.uca.edu.ni', N'7896-5632', N'Ing. Civil'),
(16, N'000033668', N'Daniela', N'Nuñez','21/03/2004', N'daniela.nunez87956@est.uca.edu.ni', N'7745-8999', N'Diseño Gráfico'),
(17, N'000033669', N'Marcos', N'Sevilla', '18/09/2002', N'marcos.sevilla89677@est.uca.edu.ni', N'5633-1000', N'Administración'),
(18, N'000033670', N'Alexander', N'Alvarez', '14/01/2001', N'alexander.alvarez63541@est.uca.edu.ni', N'7422-4533', N'Medicina'),
(19, N'000033671', N'Angie', N'Pérez', '15/12/2001', N'angie.perez89654@est.uca.edu.ni', N'7758-4471', N'Comunicación'),
(20, N'000033672', N'Elizabeth', N'Pérez', '6/03/2000', N'elizabeth.perez23147@est.uca.edu.ni', N'8942-4713', N'Contabilidad'), 
(21, N'000033673', N'José', N'Flores', '2/06/2002', N'jose.flores74123@est.uca.edu.ni', N'8256-1111', N'Derecho'),
(22, N'000033674', N'Katerin', N'Reyes', '22/07/2001', N'katerin.reyes78965@est.uca.edu.ni', N'8432-2345', N'Ing. Sistemas'),
(23, N'000033675', N'Rene', N'Sandoval', '8/08/2003', N'rene.sandoval77785@est.uca.edu.ni', N'8600-1234', N'Arquitectura'),
(24, N'000033676', N'Camilo', N'Solis', '27/04/2003', N'camilo.solis78956@est.uca.edu.ni', N'8666-2222', N'Ing. Eléctrica'),
(25, N'000033677', N'Dayer', N'Torres', '05/01/2005', N'dayer.torres56312@est.uca.edu.ni', N'8111-9999', N'Ing. Eléctrica'),
(26, N'000033678', N'Luswi', N'Torres', '12/09/2004', N'luswi.torres14789@est.uca.edu.ni', N'8800-3333', N'Ing. Industrial'),
(27, N'000033679', N'Juan', N'Perez', '18/11/2005', N'juan.perez12345@est.uca.edu.ni', N'8222-1111', N'Administración'),
(28, N'000033680', N'Kimberly', N'Herrera', '3/03/2005', N'kimberly.herrera78945@est.uca.edu.ni', N'8555-1111', N'Psicología'),
(29, N'000033681', N'Eliseo', N'Paz', '20/12/2005', N'eliseo.paz33965@est.uca.edu.ni', N'8210-9999', N'Medicina'),
(30, N'000033682', N'Abdiel', N'Pacheco', '20/02/2002', N'abdiel.pacheco74785@est.uca.edu.ni', N'8666-3333', N'Ing. Sistemas'),
(31, N'000033683', N'Marcos', N'Osorio', '30/06/2001', N'marcos.osorio78956@est.uca.edu.ni', N'8988-3333', N'Ing. Civil'),
(32, N'000033684', N'Isabella', N'Nuñez', '17/05/2003', N'isabella.nunez89654@est.uca.edu.ni', N'8422-4444', N'Medicina'),
(33, N'000033685', N'Astrid', N'Morales', '21/08/2004', N'astrid.morales11423@est.uca.edu.ni', N'8122-4444', N'Comunicación'),
(34, N'000033686', N'Adrian', N'Mora', '2/02/2002', N'adrian.mora22357@est.uca.edu.ni', N'8777-6666', N'Ing. Mecánica'),
(35, N'000033687', N'Miguel', N'Midence', '20/10/2001', N'miguel.midence33551@est.uca.edu.ni', N'8555-2222', N'Contabilidad'),
(36, N'000033688', N'Erick', N'Morales', '16/06/2005', N'erick.morales78956@est.uca.edu.ni', N'8122-4445', N'Comunicación'),
(37, N'000033689', N'Joaquín', N'Torres', '20/03/2000', N'joaquin.torres11234@est.uca.edu.ni', N'8444-5555', N'Ing. Eléctrica'),
(38, N'000033690', N'Ronald', N'Ocampo', '12/01/2001', N'ronald.ocampo78965@est.uca.edu.ni', N'8787-8787', N'Psicología'),
(39, N'000033691', N'Cristian', N'Herrera', '10/02/2004', N'cristian.herrera78456@est.uca.edu.ni', N'8345-6789', N'Ing. Industrial'),
(40, N'000033692', N'Luis', N'Reinosa', '14/11/2005', N'luis.reinosa78956@est.uca.edu.ni', N'8111-2233', N'Administración');
go

SELECT Estudiantes.*
FROM     Estudiantes
go


-- 2.	Inserte 10 registros en la tabla Clases.

INSERT INTO Clases (ID_clase, Codigo_clase , Nombre_clase, Horario) VALUES
(1, N'B120', N'Cálculo 1', N'Lunes 7:00 - 8:30'),
(2, N'B113', N'Taller de Redacción', N'Lunes 12:40 - 2:10'),
(3, N'B124', N'Reflexión Teologica', N'Lunes 2:30 - 4:00'),
(4, N'B109', N'Matemática Discreta', N'Miércoles 12:30 - 2:10'),
(5, N'B132', N'Diseño de Bases de Datos', N'Miércoles 2:30 - 4:00'),
(6, N'B125', N'Administración de Servidores', N'Miércoles 4:20 - 5:50'),
(7, N'B009', N'Programación Orientada a Objetos', N'Viernes 9:00 - 10:30'),
(8, N'B118', N'Estructuras y Algoritmos de Datos', N'Jueves 10:50 - 12:20'),
(9, N'B126', N'Algebra Lineal', N'Martes 12:40 - 2:10'),
(10, N'B107', N'Programación de Aplicaciones', N'Lunes 4:20 - 5:50');
go

SELECT Clases.*
FROM     Clases
go

-- 3.	Inserte 20 registros en la tabla Monitores.

INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) VALUES
(1, 25, 4, 2023, N'Tercer semestre'), 
(2, 15, 5, 2023, N'Tercer semestre'),
(3, 3, 6, 2023, N'Tercer semestre'),
(4, 2, 1, 2023, N'Tercer semestre'),
(5, 12, 2, 2023, N'Cuarto semestre'),
(6, 36, 3, 2023, N'Cuarto semestre'),
(7, 31, 4, 2023, N'Cuarto semestre'),
(8, 9, 6, 2023, N'Cuarto semestre'),
(9, 17, 7, 2023, N'Cuarto semestre'),
(10, 29, 10, 2023, N'Quinto semestre'),
(11, 38, 10, 2023, N'Cuarto semestre'),
(12, 40, 7, 2023, N'Cuarto semestre'),
(13, 10, 9, 2023, N'Quinto semestre'),
(14, 20, 2, 2023, N'Quinto semestre'),
(15, 30, 2, 2023, N'Quinto semestre'),
(16, 19, 7, 2023, N'Sexto semestre'),
(17, 21, 3, 2023, N'Quinto semestre'),
(18, 33, 9, 2023, N'Sexto semestre'),
(19, 24, 10, 2023, N'Quinto semestre'),
(20, 11, 3, 2023, N'Sexto semestre');
go

SELECT Monitores.*
FROM     Monitores
go

-- 4.	Edite 5 registros en la tabla Monitores

UPDATE Monitores SET ID_estudiante = 13 WHERE ID_monitor = 1;
go

UPDATE Monitores SET Semestre_en_curso = 'Sexto semestre' WHERE ID_monitor = 19
go

UPDATE Monitores SET ID_clase = 10 WHERE ID_monitor = 3
go

UPDATE Monitores SET ID_estudiante = 8 WHERE ID_monitor = 20;
go

UPDATE Monitores SET ID_estudiante = 5 WHERE ID_monitor = 8;
go

UPDATE Monitores SET ID_clase = 5 WHERE ID_monitor = 4
go

UPDATE Monitores SET ID_clase = 10 WHERE ID_monitor = 8
go

UPDATE Monitores SET ID_clase = 3 WHERE ID_monitor = 4
go

UPDATE Monitores SET ID_clase = 7 WHERE ID_monitor = 2
go


-- 5.	Elimine 4 registros de la tabla Clases

DELETE FROM Clases WHERE ID_clase = 1
go

DELETE FROM Clases WHERE Nombre_clase = 'Administración de Servidores'
go

DELETE FROM Clases WHERE Horario = 'Miércoles 2:30 - 4:00'
go

DELETE FROM Clases WHERE Codigo_clase = 'B118'
go

SELECT Clases.*
FROM     Clases
go


-- 6.	Muestre los monitores de la carrera de Ingeniería en sistema de información

SELECT *
FROM     Estudiantes INNER JOIN
                  Monitores ON Estudiantes.ID_estudiante = Monitores.ID_estudiante 
WHERE Carrera = 'Ing. Sistemas'
go

-- 7.	Muestre el nombre completo de los monitores, la clase que van a impartir y su correo electrónico

SELECT Estudiantes.Nombre + N' ' + Estudiantes.Apellido As N'Nombre Completo', Clases.Nombre_clase As N'Clase a Impartir', Estudiantes.Correo_electronico As N'Correo Electrónico del Estudiante'
FROM     Clases INNER JOIN
                  Monitores ON Clases.ID_clase = Monitores.ID_clase INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
go

-- 8.	Muestre los monitores que cumplen años en el mes de mayo

SELECT Estudiantes.Nombre + N' ' + Estudiantes.Apellido As N'Nombre Completo', Estudiantes.FechaNac As N'Fecha de Nacimiento'
FROM     Monitores INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE MONTH(FechaNac) = 5
go

-- 9.	Muestre los monitores que cumplen años durante la semana del 8 al 13 de mayo

SELECT Estudiantes.Nombre + N' ' + Estudiantes.Apellido As N'Nombre Completo', Estudiantes.FechaNac As N'Fecha de Nacimiento'
FROM     Monitores INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE (MONTH(FechaNac) = 5) and (DAY(FechaNac) between 8 and 13)
go

-- No hay monitores que cumplan en esas fechas probemos con otro rango y mes distinto
SELECT Estudiantes.Nombre + N' ' + Estudiantes.Apellido As N'Nombre Completo', Estudiantes.FechaNac As N'Fecha de Nacimiento'
FROM     Monitores INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE (MONTH(FechaNac) = 6) and (DAY(FechaNac) between 7 and 20)
go

-- 10.	Muestre los monitores que posean en su nombre la letra u

SELECT *
FROM     Monitores INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE Nombre like '%u%'
go

-- Letra J
SELECT *
FROM     Monitores INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE Nombre like '%J%'
go

-- 11.	Mostrar los monitores por una clase especifica.

SELECT Estudiantes.*, Clases.*
FROM     Clases INNER JOIN
                  Monitores ON Clases.ID_clase = Monitores.ID_clase INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE Nombre_clase = N'Programación de Aplicaciones'
go

-- 12.	Contar cuantos monitores hay mayores de edad.

SELECT COUNT(YEAR(GETDATE()) - YEAR(FechaNac)) as N'Cantidad de Monitores Mayores de Edad'  
FROM     Monitores INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE YEAR(GETDATE()) - YEAR(FechaNac) >= 18
GO

-- Hay 20 vamos a verificarlo
SELECT Estudiantes.*, Monitores.*
FROM     Estudiantes INNER JOIN
                  Monitores ON Estudiantes.ID_estudiante = Monitores.ID_estudiante
WHERE YEAR(GETDATE()) - YEAR(FechaNac) >= 18
GO

-- 13.	Contar cuantos monitores son menores de edad.

SELECT COUNT(YEAR(GETDATE()) - YEAR(FechaNac)) as N'Cantidad de Monitores Menores de Edad'  
FROM     Monitores INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE YEAR(GETDATE()) - YEAR(FechaNac) < 18
GO

-- No hay menores vamos a verificarlo

SELECT Estudiantes.*, Monitores.*
FROM     Estudiantes INNER JOIN
                  Monitores ON Estudiantes.ID_estudiante = Monitores.ID_estudiante
WHERE YEAR(GETDATE()) - YEAR(FechaNac) < 18
GO

-- 14.	Mostrar los horarios de las clases.

SELECT Codigo_clase As N'Código', Nombre_clase As N'Clase', Horario 
FROM     Clases
GO

-- 15.	Realice un backup de la base de datos

-- 16.	Agregue un campo llamado activo a la tabla Clases de tipo bit que tenga valor por defecto verdadero.

ALTER TABLE Clases ADD Activo bit default 'true'
go

SELECT Clases.*
FROM     Clases

-- 17.	Elimine la tabla Monitores.

DELETE FROM Monitores -- Para Eliminar Todos los Registros
GO

DROP TABLE Monitores -- Para Eliminar Totalmente la Tabla
GO

-- 18.	Elimine la tabla Estudiantes.

DELETE FROM Estudiantes -- Para Eliminar Todos los Registros
GO

DROP TABLE Estudiantes -- Para Eliminar Totalmente la Tabla
GO

-- 19.	Elimine la base de datos.
USE master
GO
DROP DATABASE BDMonitores -- Para Eliminar Todos los Registros
GO

-- 20.	Restaure la base de datos anteriormente respaldada.
SELECT Clases.*
FROM     Clases
go

SELECT Estudiantes.*
FROM     Estudiantes
go

SELECT Monitores.*
FROM     Monitores
go
