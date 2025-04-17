--BASE DE DATOS
USE MASTER;
DROP DATABASE CineDB;
GO

--TABLAS
USE CineDB;
GO

PRINT 'Borrando Cliente_Asiste_Sucursal...';
DELETE FROM Cliente_Asiste_Sucursal;
GO
PRINT 'Borrando Proveedor_Suministra_Sucursal...';
DELETE FROM Proveedor_Suministra_Sucursal;
GO
PRINT 'Borrando Venta_Detalle...';
DELETE FROM Venta_Detalle;
GO

-- 2. Borrar tablas que son referenciadas por las anteriores
PRINT 'Borrando Venta...';
DELETE FROM Venta; -- Referencia Empleado, Cliente, Promocion
GO
PRINT 'Borrando Funcion...';
DELETE FROM Funcion; -- Referencia Pelicula, Sucursal, Proveedor
GO

-- 3. Borrar Proveedor (Debe ser ANTES de Empleado porque Proveedor.Empleado_ID_Atiende referencia a Empleado)
PRINT 'Borrando Proveedor...';
DELETE FROM Proveedor;
GO

-- 4. Romper el ciclo Sucursal <-> Empleado
PRINT 'Quitando referencia de Gerente_ID en Sucursal...';
UPDATE Sucursal
SET Gerente_ID = NULL
WHERE Gerente_ID IS NOT NULL; -- Anula la FK desde Sucursal HACIA Empleado
GO

-- 5. Borrar Empleados (Ahora es posible porque Gerente_ID es NULL y Proveedor/Venta ya no los referencian)
PRINT 'Borrando Empleado...';
DELETE FROM Empleado;
GO

-- 6. Borrar Sucursales (Ahora es posible porque Empleado.Sucursal_ID ya no existe)
PRINT 'Borrando Sucursal...';
DELETE FROM Sucursal;
GO

-- 7. Borrar tablas base o independientes restantes
PRINT 'Borrando Producto...';
DELETE FROM Producto;
GO
PRINT 'Borrando Promocion...';
DELETE FROM Promocion;
GO
PRINT 'Borrando Pelicula...';
DELETE FROM Pelicula;
GO
PRINT 'Borrando Cliente...';
DELETE FROM Cliente;
GO


DBCC CHECKIDENT ('dbo.Cliente', RESEED, 0);
GO
DBCC CHECKIDENT ('dbo.Pelicula', RESEED, 0);
GO
DBCC CHECKIDENT ('dbo.Promocion', RESEED, 0);
GO
DBCC CHECKIDENT ('dbo.Producto', RESEED, 0);
GO
DBCC CHECKIDENT ('dbo.Empleado', RESEED, 0);
GO
DBCC CHECKIDENT ('dbo.Sucursal', RESEED, 0);
GO
DBCC CHECKIDENT ('dbo.Proveedor', RESEED, 0);
GO
DBCC CHECKIDENT ('dbo.Funcion', RESEED, 0);
GO
DBCC CHECKIDENT ('dbo.Venta', RESEED, 0);
GO
DBCC CHECKIDENT ('dbo.Venta_Detalle', RESEED, 0);
GO

-------------------------------------------------------------
PRINT '--- LIMPIANDO Funcion, Venta, Venta_Detalle ---';
USE CineDB;
GO

-- Borrar en orden inverso de dependencia DENTRO de este grupo
DELETE FROM Venta_Detalle;
GO
DELETE FROM Venta;
GO
DELETE FROM Funcion;
GO

-- Reiniciar IDENTITY para estas tablas
DBCC CHECKIDENT ('dbo.Funcion', RESEED, 0);
GO
DBCC CHECKIDENT ('dbo.Venta', RESEED, 0);
GO
DBCC CHECKIDENT ('dbo.Venta_Detalle', RESEED, 0);
GO

PRINT '--- LIMPIEZA Y REINICIO PARA Funcion, Venta, Venta_Detalle COMPLETADO ---';
GO
