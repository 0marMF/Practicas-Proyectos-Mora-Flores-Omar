USE cine; 
GO 

-- a: Establecer un usuario con el rol “Administrador” y todos los privilegios.
CREATE ROLE Administrador;
GO
GRANT CONTROL ON DATABASE::cine TO Administrador;
GO
CREATE LOGIN user_admin WITH PASSWORD = 'AdminPassword123!';
GO
CREATE USER user_admin FOR LOGIN user_admin;
GO
ALTER ROLE Administrador ADD MEMBER user_admin;
GO

--b: Establecer tres usuarios con rol de Jefatura/Coordinación
CREATE ROLE JefaturaCoordinacion;
GO
GRANT SELECT, INSERT, UPDATE ON dbo.ventas TO JefaturaCoordinacion;
GRANT SELECT, INSERT, UPDATE ON dbo.funciones TO JefaturaCoordinacion;
GRANT SELECT, INSERT, UPDATE ON dbo.promociones TO JefaturaCoordinacion;
GRANT SELECT, UPDATE ON dbo.empleados TO JefaturaCoordinacion; -- Pueden ver y actualizar empleados
GRANT SELECT ON dbo.peliculas TO JefaturaCoordinacion;
GRANT SELECT ON dbo.clientes TO JefaturaCoordinacion;
GRANT EXECUTE ON dbo.sp_InsertarCliente TO JefaturaCoordinacion; -- Pueden registrar nuevos clientes
GRANT EXECUTE ON dbo.sp_InsertarEmpleado TO JefaturaCoordinacion; -- Pueden registrar nuevos empleados
GO
CREATE LOGIN user_jefe1 WITH PASSWORD = 'JefePassword1!';
CREATE USER user_jefe1 FOR LOGIN user_jefe1;
ALTER ROLE JefaturaCoordinacion ADD MEMBER user_jefe1;
GO
CREATE LOGIN user_jefe2 WITH PASSWORD = 'JefePassword2!';
CREATE USER user_jefe2 FOR LOGIN user_jefe2;
ALTER ROLE JefaturaCoordinacion ADD MEMBER user_jefe2;
GO
CREATE LOGIN user_jefe3 WITH PASSWORD = 'JefePassword3!';
CREATE USER user_jefe3 FOR LOGIN user_jefe3;
ALTER ROLE JefaturaCoordinacion ADD MEMBER user_jefe3;
GO

--c: Establecer un usuario con el rol de “vendedor”
CREATE ROLE Vendedor;
GO
GRANT SELECT ON dbo.peliculas TO Vendedor; -- Ver catálogo de películas
GRANT SELECT ON dbo.funciones TO Vendedor; -- Ver funciones disponibles
GRANT SELECT ON dbo.promociones TO Vendedor; -- Ver promociones aplicables
GRANT SELECT ON dbo.clientes TO Vendedor; -- Consultar clientes existentes
GRANT INSERT ON dbo.ventas TO Vendedor; -- Registrar una nueva venta
GRANT EXECUTE ON dbo.sp_InsertarCliente TO Vendedor; -- Registrar un nuevo cliente si es necesario
GO
CREATE LOGIN user_vendedor WITH PASSWORD = 'VendedorPassword123!';
CREATE USER user_vendedor FOR LOGIN user_vendedor;
ALTER ROLE Vendedor ADD MEMBER user_vendedor;
GO

--d: Establecer un rol de “cliente”
CREATE ROLE Cliente;
GO
GRANT SELECT ON dbo.peliculas TO Cliente; -- Puede ver el catálogo de películas
GRANT SELECT ON dbo.funciones TO Cliente; -- Puede ver los horarios
GRANT SELECT, INSERT, UPDATE ON dbo.clientes TO Cliente; -- Puede gestionar su propia información (se requeriría RLS para seguridad total)
GO
CREATE LOGIN user_cliente WITH PASSWORD = 'ClientePassword123!';
CREATE USER user_cliente FOR LOGIN user_cliente;
ALTER ROLE Cliente ADD MEMBER user_cliente;
GO

-- Punto e: Comprobación de vulnerabilidades y permisos.
-- Prueba 1: Un Vendedor intenta modificar la tabla de empleados. (Debe fallar)
BEGIN TRY
    EXECUTE AS USER = 'user_vendedor';
    -- Esta consulta fallará porque el rol Vendedor no tiene permiso sobre 'empleados'
    SELECT TOP 1 * FROM dbo.empleados;
    REVERT;
    PRINT '    [ERROR INESPERADO] La consulta del vendedor a empleados fue exitosa.';
END TRY
BEGIN CATCH
    REVERT;
    PRINT '    [ÉXITO] La consulta falló como se esperaba. Permiso denegado.';
END CATCH
GO

-- Prueba 2: Un Vendedor intenta realizar una venta. (Debe ser exitoso)
BEGIN TRY
    EXECUTE AS USER = 'user_vendedor';
    -- Asumiendo que existen estos IDs para la prueba
    INSERT INTO dbo.ventas (ID_Ventas, Fecha_Ventas, Hora_Venta, Total_Venta, ID_Empleados, ID_Funciones)
    VALUES (999, GETDATE(), GETDATE(), 150.00, 1, 1);
    
    -- Limpieza de la prueba
    DELETE FROM dbo.ventas WHERE ID_Ventas = 999;
    REVERT;
    PRINT '    [ÉXITO] El Vendedor pudo registrar una venta.';
END TRY
BEGIN CATCH
    REVERT;
    PRINT '    [ERROR INESPERADO] El vendedor no pudo registrar la venta.';
    PRINT '    Mensaje de error: ' + ERROR_MESSAGE();
END CATCH
GO

-- Prueba 3: Un Cliente intenta eliminar una película. (Debe fallar)
PRINT CHAR(10) + '--> Prueba 3: Cliente intenta eliminar una película.';
BEGIN TRY
    EXECUTE AS USER = 'user_cliente';
    -- Esta acción fallará
    DELETE FROM dbo.peliculas WHERE ID_Peliculas = 1;
    REVERT;
    PRINT '    [ERROR INESPERADO] El cliente pudo eliminar una película.';
END TRY
BEGIN CATCH
    REVERT;
    PRINT '    [ÉXITO] La eliminación falló como se esperaba. Permiso denegado.';
END CATCH
GO

-- Prueba 4: Un Jefe de Coordinación intenta modificar un empleado. (Debe ser exitoso)
PRINT CHAR(10) + '--> Prueba 4: Jefe intenta actualizar un empleado.';
BEGIN TRY
    EXECUTE AS USER = 'user_jefe1';
    -- Esta acción debería ser exitosa
    UPDATE dbo.empleados SET Turno_Empleados = 'M' WHERE ID_Empleados = 1;
    REVERT;
    PRINT '    [ÉXITO] El Jefe de Coordinación pudo actualizar un empleado.';
END TRY
BEGIN CATCH
    REVERT;
    PRINT '    [ERROR INESPERADO] El Jefe no pudo actualizar el empleado.';
    PRINT '    Mensaje de error: ' + ERROR_MESSAGE();
END CATCH
GO

-- Prueba 5: Un Jefe de Coordinación intenta eliminar la tabla de empleados. (Debe fallar)
PRINT CHAR(10) + '--> Prueba 5: Jefe intenta hacer DROP de una tabla.';
BEGIN TRY
    EXECUTE AS USER = 'user_jefe1';
    -- Esta acción debe fallar porque no tiene permisos de DDL
    DROP TABLE dbo.proveedores;
    REVERT;
    PRINT '    [ERROR INESPERADO] El Jefe pudo eliminar una tabla.';
END TRY
BEGIN CATCH
    REVERT;
    PRINT '    [ÉXITO] La eliminación de la tabla falló. Permiso denegado.';
END CATCH
GO