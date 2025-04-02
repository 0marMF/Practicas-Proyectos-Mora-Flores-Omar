-- Seleccionar la base de datos
USE RENAPO_Familias_4;
GO

-- Eliminar la tabla RepresentantesFamilia (contiene claves foráneas a las demás tablas)
DROP TABLE IF EXISTS RepresentantesFamilia;
GO
DROP TABLE IF EXISTS Viviendas;
GO
DROP TABLE IF EXISTS TrabajadoresSociales;
GO
DROP TABLE IF EXISTS Empleados;
GO

DELETE RepresentantesFamilia;
Go