-- Asegurarse de estar en la base de datos correcta
USE cine;
GO

PRINT 'Iniciando proceso de limpieza...';
GO

-- --- 1. Eliminar datos de las TABLAS NUEVAS ---
-- (Usamos DELETE FROM; TRUNCATE TABLE sería más rápido pero DELETE es más general)

PRINT 'Eliminando datos de las tablas nuevas...';

IF OBJECT_ID('dbo.Reporte1', 'U') IS NOT NULL
BEGIN
    DELETE FROM dbo.Reporte1;
    PRINT 'Datos eliminados de: Reporte1';
END
ELSE
BEGIN
    PRINT 'Tabla Reporte1 no encontrada, omitiendo eliminación de datos.';
END
GO

IF OBJECT_ID('dbo.ListaDomicilio', 'U') IS NOT NULL
BEGIN
    DELETE FROM dbo.ListaDomicilio;
    PRINT 'Datos eliminados de: ListaDomicilio';
END
ELSE
BEGIN
    PRINT 'Tabla ListaDomicilio no encontrada, omitiendo eliminación de datos.';
END
GO

IF OBJECT_ID('dbo.NuevoRegistro', 'U') IS NOT NULL
BEGIN
    DELETE FROM dbo.NuevoRegistro;
    PRINT 'Datos eliminados de: NuevoRegistro';
END
ELSE
BEGIN
    PRINT 'Tabla NuevoRegistro no encontrada, omitiendo eliminación de datos.';
END
GO

IF OBJECT_ID('dbo.Registro2', 'U') IS NOT NULL
BEGIN
    DELETE FROM dbo.Registro2;
    PRINT 'Datos eliminados de: Registro2';
END
ELSE
BEGIN
    PRINT 'Tabla Registro2 no encontrada, omitiendo eliminación de datos.';
END
GO

-- La tabla Registro2_Copia puede o no existir dependiendo de la ejecución anterior
IF OBJECT_ID('dbo.Registro2_Copia', 'U') IS NOT NULL
BEGIN
    DELETE FROM dbo.Registro2_Copia;
    PRINT 'Datos eliminados de: Registro2_Copia';
END
ELSE
BEGIN
    PRINT 'Tabla Registro2_Copia no encontrada (puede haber sido eliminada por la transacción), omitiendo eliminación de datos.';
END
GO

PRINT 'Fase 1: Eliminación de datos completada.';
GO

-- --- 2. Eliminar TODAS las VISTAS CREADAS ---

PRINT 'Eliminando las vistas creadas...';

IF OBJECT_ID('dbo.vw_Ultimos3Clientes', 'V') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_Ultimos3Clientes;
    PRINT 'Vista eliminada: vw_Ultimos3Clientes';
END
ELSE
BEGIN
    PRINT 'Vista vw_Ultimos3Clientes no encontrada, omitiendo eliminación.';
END
GO

IF OBJECT_ID('dbo.vw_Ultimos3Empleados', 'V') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_Ultimos3Empleados;
    PRINT 'Vista eliminada: vw_Ultimos3Empleados';
END
ELSE
BEGIN
    PRINT 'Vista vw_Ultimos3Empleados no encontrada, omitiendo eliminación.';
END
GO

IF OBJECT_ID('dbo.vw_Ultimos3Proveedores', 'V') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_Ultimos3Proveedores;
    PRINT 'Vista eliminada: vw_Ultimos3Proveedores';
END
ELSE
BEGIN
    PRINT 'Vista vw_Ultimos3Proveedores no encontrada, omitiendo eliminación.';
END
GO

IF OBJECT_ID('dbo.vw_Reporte1', 'V') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_Reporte1;
    PRINT 'Vista eliminada: vw_Reporte1';
END
ELSE
BEGIN
    PRINT 'Vista vw_Reporte1 no encontrada, omitiendo eliminación.';
END
GO

IF OBJECT_ID('dbo.vw_ListaDomicilio', 'V') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_ListaDomicilio;
    PRINT 'Vista eliminada: vw_ListaDomicilio';
END
ELSE
BEGIN
    PRINT 'Vista vw_ListaDomicilio no encontrada, omitiendo eliminación.';
END
GO

IF OBJECT_ID('dbo.vw_NuevoRegistro', 'V') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_NuevoRegistro;
    PRINT 'Vista eliminada: vw_NuevoRegistro';
END
ELSE
BEGIN
    PRINT 'Vista vw_NuevoRegistro no encontrada, omitiendo eliminación.';
END
GO

PRINT 'Fase 2: Eliminación de vistas completada.';
GO

-- --- 3. Eliminar las TABLAS NUEVAS ---

PRINT 'Eliminando las tablas nuevas...';

IF OBJECT_ID('dbo.Reporte1', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Reporte1;
    PRINT 'Tabla eliminada: Reporte1';
END
ELSE
BEGIN
    PRINT 'Tabla Reporte1 no encontrada, omitiendo eliminación.';
END
GO

IF OBJECT_ID('dbo.ListaDomicilio', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.ListaDomicilio;
    PRINT 'Tabla eliminada: ListaDomicilio';
END
ELSE
BEGIN
    PRINT 'Tabla ListaDomicilio no encontrada, omitiendo eliminación.';
END
GO

IF OBJECT_ID('dbo.NuevoRegistro', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.NuevoRegistro;
    PRINT 'Tabla eliminada: NuevoRegistro';
END
ELSE
BEGIN
    PRINT 'Tabla NuevoRegistro no encontrada, omitiendo eliminación.';
END
GO

IF OBJECT_ID('dbo.Registro2', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Registro2;
    PRINT 'Tabla eliminada: Registro2';
END
ELSE
BEGIN
    PRINT 'Tabla Registro2 no encontrada, omitiendo eliminación.';
END
GO

-- La tabla Registro2_Copia puede o no existir
IF OBJECT_ID('dbo.Registro2_Copia', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Registro2_Copia;
    PRINT 'Tabla eliminada: Registro2_Copia';
END
ELSE
BEGIN
    PRINT 'Tabla Registro2_Copia no encontrada (puede haber sido eliminada por la transacción), omitiendo eliminación.';
END
GO

PRINT 'Fase 3: Eliminación de tablas completada.';
GO

PRINT 'Proceso de limpieza finalizado.';
GO