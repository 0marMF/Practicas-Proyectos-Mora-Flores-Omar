USE RENAPO_Familias_4;
GO
---------------------- practica -------------------------
--1)REGISTRAR 8 REGISTROS
INSERT INTO TrabajadoresSociales (Nombre, ApellidoPaterno, ApellidoMaterno, NumeroTrabajadorSocial, Genero, RFC)
VALUES
('Alan', 'Garcia', 'Leon', 2006, 'M', 'ALGALE6789012'),
('Angel', 'Palma', 'Guiterrez', 2007, 'M', 'ANPAGU7890123'),
('Francisco', 'Acosta', 'Guiterrez', 2008, 'M', 'FRACGU8901234'),
('Sohny', 'Dominguez', 'Perez', 2009, 'M', 'SODOPE789012'),
('Victor Marvel', 'Cortes', 'Uscanga', 2010, 'M', 'VICOUS7890123'),
('Lorena', 'Flores', 'Covarruvias', 2011, 'F', 'LOFLCO8901234'),
('Laura', 'Perea', 'Zavala', 2012, 'F', 'LAPEZA9012345'),
('Sofia', 'Peralta', 'Rodriguez', 2013, 'F', 'SOPERO0123456');
GO

--1a)CREACION NUETA TABLA "NUEVO USUARIO"
CREATE TABLE Nuevo_Usuario (
    NuevoUSerID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL,
    ApellidoPaterno NVARCHAR(50) NOT NULL,
    ApellidoMaterno NVARCHAR(50) NOT NULL,
    Genero CHAR(1) NOT NULL,   -- 'M' para masculino, 'F' para femenino
    Edad INT,       
);
GO

--2)LEER LOS ULTIMOS 3 REGISTROS 
SELECT TOP(3) * FROM TrabajadoresSociales 
ORDER BY TrabajadorSocialID DESC
GO


--2a)CONSULTAR 4 RESGITOS CUALQUIERA

SELECT TOP(4) * FROM RepresentantesFamilia;
GO

--3)MODIFICAR TABLA "NUEVO USUARIO"
ALTER TABLE Nuevo_Usuario ADD RFC CHAR(13);
GO

--3a)ACTUALIZAR 9 REGISTROS DE EMPLEADO
INSERT INTO Empleados (Nombre, ApellidoPaterno, ApellidoMaterno, NumeroEmpleado, Genero, Puesto, Antiguedad, RFC)
VALUES
('David', 'Correa', 'Calvilla', 1006, 'M', 'Supervisor', 7, 'DACOCO1234567'),
('Karla', 'Baez', 'Mariano', 1007, 'F', 'Directora', 2, 'KABAM2345678'),
('Alexis', 'Maldonado', 'Sanchez', 1008, 'M', 'Coordinador', 1, 'ALMAS3456789'),
('Victor', 'Sanchez', 'Perez', 1009, 'M', 'Tecnico', 2, 'VISAP4567890'),
('Alejando', 'Saldaña', 'Morales', 1010, 'M', 'Subdirector', 8, 'ALSAM5678901');
GO
SELECT * FROM Empleados;
GO
UPDATE Empleados
SET Nombre = 'Maximiliano'
WHERE EmpleadoID = 1;
UPDATE Empleados
SET Nombre = 'Alejandra'
WHERE EmpleadoID = 2;
UPDATE Empleados
SET Nombre = 'Victo'
WHERE EmpleadoID = 3;
UPDATE Empleados
SET Nombre = 'Leo'
WHERE EmpleadoID = 4;
UPDATE Empleados
SET Nombre = 'Daniela'
WHERE EmpleadoID = 5;
UPDATE Empleados
SET Nombre = 'Job'
WHERE EmpleadoID = 7;
UPDATE Empleados
SET Nombre = 'Demian'
WHERE EmpleadoID = 10;
UPDATE Empleados
SET Antiguedad = 3
WHERE EmpleadoID = 8;
UPDATE Empleados
SET Nombre = 'Arturo'
WHERE EmpleadoID = 9;
GO

--4)EMLIMINAR 7 RSGISTROS
SELECT * FROM Nuevo_Usuario;
GO
INSERT INTO Nuevo_Usuario (Nombre, ApellidoPaterno, ApellidoMaterno, Genero, Edad, RFC)
VALUES ('David', 'Correa', 'Calvilla', 'M', 22, 'DACOCO1234567'),
('Karla', 'Baez', 'Mariano', 'F', 21, 'KABAM2345678'),
('Alexis', 'Maldonado', 'Sanchez', 'M', 19, 'ALMAS3456789'),
('Victor', 'Sanchez', 'Perez', 'M', 23, 'VISAP4567890'),
('Alejando', 'Saldaña', 'Morales', 'M', 22, 'ALSAM5678901'),
('Alan', 'Garcia', 'Leon', 'M', 30,'ALGALE6789012'),
('Angel', 'Palma', 'Guiterrez', 'M', 19, 'ANPAGU7890123'),
('Francisco', 'Acosta', 'Guiterrez','M', 22, 'FRACGU8901234'),
('Sohny', 'Dominguez', 'Perez', 'M',23, 'SODOPE789012'),
('Victor Marvel', 'Cortes', 'Uscanga', 'M',21, 'VICOUS7890123'),
('Lorena', 'Flores', 'Covarruvias', 'F', 18, 'LOFLCO8901234'),
('Laura', 'Perea', 'Zavala', 'F', 23,'LAPEZA9012345'),
('Sofia', 'Peralta', 'Rodriguez', 'F', 25,'SOPERO0123456');
GO
DELETE TOP (7) 
FROM Nuevo_Usuario;
Go

--5)Filrar 10 registros donde sean mujeres entre 16 y 39 años
SELECT TOP(10) * FROM Nuevo_Usuario
WHERE Genero = 'F' 
AND Edad BETWEEN 16
AND 39;
GO

--6) Filtrar 12 resgitos donde sean hombres de 17 y 40 años
SELECT TOP(12) * FROM Nuevo_Usuario
WHERE Genero = 'M' 
AND Edad BETWEEN 17
AND 40;
GO

--7) Crear tabla "Filtrados" y guardar el promedio de los puntos anteriores
SELECT Nombre, ApellidoPaterno, ApellidoMAterno, Genero, Edad
INTO Filtrados
FROM Nuevo_Usuario
WHERE Genero = 'F'
AND Edad BETWEEN 16 AND 39; 
GO

INSERT INTO Filtrados(Nombre, ApellidoPaterno, ApellidoMAterno, Genero, Edad)
SELECT N.Nombre, N.ApellidoPaterno, N.ApellidoMAterno, N.Genero, N.Edad
FROM Nuevo_Usuario N
WHERE N.Genero = 'M'
AND N.Edad BETWEEN 17 AND 40;
GO

drop table Filtrados;
GO

select * from Filtrados;
GO
select * from Nuevo_Usuario;
GO

--procedimiento almacenado Nuevo usuario insercion
CREATE PROCEDURE InstertarNuevoUsuario 
	@Nombre NVARCHAR(50),
    @ApellidoPaterno NVARCHAR(50),
    @ApellidoMaterno NVARCHAR(50),
    @Genero CHAR(1),   -- 'M' para masculino, 'F' para femenino
    @Edad INT, 
	@RFC CHAR(13) 
AS 
BEGIN 
	INSERT INTO Nuevo_Usuario (Nombre, ApellidoPaterno, ApellidoMaterno, Genero, Edad, RFC)
	VALUES (@Nombre, @ApellidoPaterno, @ApellidoMaterno, @Genero, @Edad, @RFC);
	END;
	GO

EXEC InstertarNuevoUsuario 'SAmuel','Horta', 'Perez', 'M', 22, 'SAHOPE2202200';
GO


