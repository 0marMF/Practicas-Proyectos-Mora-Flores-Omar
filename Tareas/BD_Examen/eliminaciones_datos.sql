-- Seleccionar la base de datos
USE RENAPO_Familias;
GO

-- Eliminar la tabla familias (contiene claves foráneas a las demás tablas)
DROP TABLE IF EXISTS Familias;
GO
DROP TABLE IF EXISTS RepresentantesFamilia;
GO
DROP TABLE IF EXISTS Viviendas;
GO
DROP TABLE IF EXISTS TrabajadoresSociales;
GO
DROP TABLE IF EXISTS Empleados;
GO

DELETE Familias;
Go