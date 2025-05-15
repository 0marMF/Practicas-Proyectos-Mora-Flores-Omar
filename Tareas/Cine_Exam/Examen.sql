USE cine;
GO

--a) Integre el diagrama entidad – relación de dicho escenario con su cardinalidad y grado.


-- b) Realice la carga de 45 registros DISTRIBUIDOS utilizando los procedimientos almacenados.
-- --- Procedimiento para Insertar Clientes ---
-- Crear SP para Clientes
CREATE PROCEDURE dbo.sp_InsertarCliente (
    @ID_Cliente INT,
    @Nombre_Cliente VARCHAR(50),
    @Ap_Pat_Cliente VARCHAR(50),
    @Ap_Mat_Cliente VARCHAR(50) = NULL, -- Permitir NULL para apellido materno
    @Correo_Cliente VARCHAR(100),
    @Tel_Cliente VARCHAR(15),
    @Genero_Cliente CHAR(1),
    @Fecha_nac_Cliente DATE,
    @Calle_Cliente VARCHAR(100),
    @Num_ext_Cliente VARCHAR(10), -- VARCHAR para flexibilidad (e.g., 'S/N', '100A')
    @Colonia_Cliente VARCHAR(100),
    @CP_Cliente VARCHAR(5),
    @Alcaldia_Cliente VARCHAR(50)
)
AS
BEGIN
    SET NOCOUNT ON; -- No mostrar mensajes de 'filas afectadas'

    -- 1. Verificar si el ID del cliente ya existe
    IF EXISTS (SELECT 1 FROM dbo.clientes WHERE ID_Cliente = @ID_Cliente)
    BEGIN
        PRINT 'ADVERTENCIA: El Cliente con ID ' + CAST(@ID_Cliente AS VARCHAR) + ' ya existe. No se insertará.';
        RETURN -1; -- Indicar fallo (ID duplicado)
    END

    -- 2. Intentar la inserción
    BEGIN 
        INSERT INTO dbo.clientes (
            ID_Cliente, Nombre_Cliente, Ap_Pat_Cliente, Ap_Mat_Cliente, Correo_Cliente,
            Tel_Cliente, Genero_Cliente, Fecha_nac_Cliente, Calle_Cliente, Num_ext_Cliente,
            Colonia_Cliente, CP_Cliente, Alcaldia_Cliente
        ) VALUES (
            @ID_Cliente, @Nombre_Cliente, @Ap_Pat_Cliente, @Ap_Mat_Cliente, @Correo_Cliente,
            @Tel_Cliente, @Genero_Cliente, @Fecha_nac_Cliente, @Calle_Cliente, @Num_ext_Cliente,
            @Colonia_Cliente, @CP_Cliente, @Alcaldia_Cliente
        );
        -- PRINT 'Cliente con ID ' + CAST(@ID_Cliente AS VARCHAR) + ' insertado correctamente.'; -- Opcional: mensaje de éxito
        RETURN 0; -- Indicar éxito
    END 
END;
GO

-- --- Procedimiento para Insertar Empleados ---
-- Crear SP para Empleados
CREATE PROCEDURE dbo.sp_InsertarEmpleado (
    @ID_Empleados INT,
    @Nombre_Empleados VARCHAR(50),
    @Ap_Pat_Empleados VARCHAR(50),
    @Ap_Mat_Empleados VARCHAR(50) = NULL,
    @Correo_Empleados VARCHAR(100),
    @Tel_Empleados VARCHAR(15),
    @Genero_Empleados CHAR(1),
    @Fecha_nac_Empleados DATE,
    @Calle_Empleados VARCHAR(100),
    @Num_Empleados VARCHAR(10), -- VARCHAR para flexibilidad
    @Colonia_Empleados VARCHAR(100),
    @CP_Empleados VARCHAR(5),
    @Alcaldia_Empleados VARCHAR(50),
    @Turno_Empleados CHAR(1),
    @ID_Sucursales INT
)
AS
BEGIN
    SET NOCOUNT ON;

    -- 1. Verificar si el ID del empleado ya existe
    IF EXISTS (SELECT 1 FROM dbo.empleados WHERE ID_Empleados = @ID_Empleados)
    BEGIN
        PRINT 'ADVERTENCIA: El Empleado con ID ' + CAST(@ID_Empleados AS VARCHAR) + ' ya existe. No se insertará.';
        RETURN -1; -- ID duplicado
    END

    -- 2. Verificar si la Sucursal (FK) existe
    IF NOT EXISTS (SELECT 1 FROM dbo.sucursales WHERE ID_Sucursales = @ID_Sucursales)
    BEGIN
        PRINT 'ERROR: La Sucursal con ID ' + CAST(@ID_Sucursales AS VARCHAR) + ' no existe. No se puede insertar empleado con ID ' + CAST(@ID_Empleados AS VARCHAR) + '.';
        RETURN -3; -- Error de FK
    END

    -- 3. Intentar la inserción
    BEGIN 
        INSERT INTO dbo.empleados (
            ID_Empleados, Nombre_Empleados, Ap_Pat_Empleados, Ap_Mat_Empleados, Correo_Empleados,
            Tel_Empleados, Genero_Empleados, Fecha_nac_Empleados, Calle_Empleados, Num_Empleados,
            Colonia_Empleados, CP_Empleados, Alcaldia_Empleados, Turno_Empleados, ID_Sucursales
        ) VALUES (
            @ID_Empleados, @Nombre_Empleados, @Ap_Pat_Empleados, @Ap_Mat_Empleados, @Correo_Empleados,
            @Tel_Empleados, @Genero_Empleados, @Fecha_nac_Empleados, @Calle_Empleados, @Num_Empleados,
            @Colonia_Empleados, @CP_Empleados, @Alcaldia_Empleados, @Turno_Empleados, @ID_Sucursales
        );
        -- PRINT 'Empleado con ID ' + CAST(@ID_Empleados AS VARCHAR) + ' insertado correctamente.';
        RETURN 0; -- Éxito
    END 
END;
GO

-- --- Procedimiento para Insertar Proveedores ---
-- Crear SP para Proveedores
CREATE PROCEDURE dbo.sp_InsertarProveedor (
    @ID_Proveedores INT,
    @Nom_Proveedor VARCHAR(100),
    @RFC_Proveedor VARCHAR(13),
    @Correo_Proveedor VARCHAR(100),
    @Tel_Proveedor VARCHAR(15),
    @Calle_Proveedor VARCHAR(100),
    @Num_Proveedor VARCHAR(10), -- VARCHAR para flexibilidad
    @Colonia_Proveedor VARCHAR(100),
    @CP_Proveedor VARCHAR(5),
    @Alcaldia_Proveedor VARCHAR(50)
)
AS
BEGIN
    -- 1. Verificar si el ID del proveedor ya existe
    IF EXISTS (SELECT 1 FROM dbo.proveedores WHERE ID_Proveedores = @ID_Proveedores)
    BEGIN
        PRINT 'ADVERTENCIA: El Proveedor con ID ' + CAST(@ID_Proveedores AS VARCHAR) + ' ya existe. No se insertará.';
        RETURN -1; -- ID duplicado
    END

    -- 2. Intentar la inserción
    BEGIN 
        INSERT INTO dbo.proveedores (
            ID_Proveedores, Nom_Proveedor, RFC_Proveedor, Correo_Proveedor,
            Tel_Proveedor, Calle_Proveedor, Num_Proveedor, Colonia_Proveedor,
            CP_Proveedor, Alcaldia_Proveedor
        ) VALUES (
            @ID_Proveedores, @Nom_Proveedor, @RFC_Proveedor, @Correo_Proveedor,
            @Tel_Proveedor, @Calle_Proveedor, @Num_Proveedor, @Colonia_Proveedor,
            @CP_Proveedor, @Alcaldia_Proveedor
        );
        RETURN 0; -- Éxito
    END 
END;
GO

-- --- Carga de 15 registros en Clientes (IDs 11 a 25) ---
EXEC dbo.sp_InsertarCliente 11, 'Sofia', 'Vargas', 'Luna', 'sofia.vl@mail.com', '5510102030', 'F', '1998-08-20', 'Revolución', '500', 'Escandón', '11800', 'Miguel Hidalgo';
EXEC dbo.sp_InsertarCliente 12, 'Javier', 'Morales', 'Soto', 'javier.ms@email.net', '5520203040', 'M', '1983-05-15', 'Patriotismo', '210', 'Condesa', '06140', 'Cuauhtémoc';
EXEC dbo.sp_InsertarCliente 13, 'Valentina', 'Rojas', 'Mendoza', 'vale.rm@example.org', '5530304050', 'F', '2001-01-10', 'Universidad', '1500', 'Copilco', '04360', 'Coyoacán';
EXEC dbo.sp_InsertarCliente 14, 'Diego', 'Castro', 'Guzman', 'diego.cg@mail.com', '5540405060', 'M', '1991-07-07', 'División del Norte', '800', 'Del Valle', '03100', 'Benito Juárez';
EXEC dbo.sp_InsertarCliente 15, 'Camila', 'Ortega', 'Silva', 'camila.os@email.net', '5550506070', 'F', '1989-03-25', 'Ejército Nacional', '450', 'Polanco', '11520', 'Miguel Hidalgo';
EXEC dbo.sp_InsertarCliente 16, 'Mateo', 'Salazar', 'Rios', 'mateo.sr@example.org', '5560607080', 'M', '1995-12-12', 'Periférico Sur', '3500', 'Jardines del Pedregal', '01900', 'Álvaro Obregón';
EXEC dbo.sp_InsertarCliente 17, 'Isabella', 'Guerrero', 'Paredes', 'isa.gp@mail.com', '5570708090', 'F', '1999-10-30', 'Insurgentes Sur', '1800', 'Florida', '01030', 'Álvaro Obregón';
EXEC dbo.sp_InsertarCliente 18, 'Sebastián', 'Molina', 'Cruz', 'sebastian.mc@email.net', '5580809000', 'M', '1980-06-18', 'Paseo de la Reforma', '300', 'Juárez', '06600', 'Cuauhtémoc';
EXEC dbo.sp_InsertarCliente 19, 'Regina', 'Navarro', 'Flores', 'regina.nf@example.org', '5590900010', 'F', '2000-02-02', 'Homero', '110', 'Polanco', '11560', 'Miguel Hidalgo';
EXEC dbo.sp_InsertarCliente 20, 'Emiliano', 'León', 'Herrera', 'emiliano.lh@mail.com', '5511112233', 'M', '1986-09-05', 'Felix Cuevas', '550', 'Del Valle', '03100', 'Benito Juárez';
EXEC dbo.sp_InsertarCliente 21, 'Renata', 'Solis', 'Jiménez', 'renata.sj@email.net', '5522223344', 'F', '1993-04-14', 'Miguel Ángel de Quevedo', '800', 'Taxqueña', '04250', 'Coyoacán';
EXEC dbo.sp_InsertarCliente 22, 'Leonardo', 'Romero', 'Blanco', 'leo.rb@example.org', '5533334455', 'M', '1975-11-28', 'Calz. de Tlalpan', '2000', 'Churubusco', '04210', 'Coyoacán';
EXEC dbo.sp_InsertarCliente 23, 'Victoria', 'Alonso', 'Muñoz', 'vicky.am@mail.com', '5544445566', 'F', '1997-08-09', 'Miramontes', '3100', 'Coapa', '14300', 'Tlalpan';
EXEC dbo.sp_InsertarCliente 24, 'Santiago', 'Paz', 'Vega', 'santi.pv@email.net', '5555556677', 'M', '1990-10-17', 'Barranca del Muerto', '150', 'Guadalupe Inn', '01020', 'Álvaro Obregón';
EXEC dbo.sp_InsertarCliente 25, 'Ximena', 'Reyes', 'Campos', 'ximena.rc@example.org', '5566667788', 'F', '1988-12-22', 'San Jerónimo', '630', 'San Jerónimo Lídice', '10200', 'Magdalena Contreras';
GO

-- --- Carga de 15 registros en Empleados (IDs 8 a 22) ---
-- Se asume que las sucursales con ID 1 y 2 existen.
EXEC dbo.sp_InsertarEmpleado 8, 'Adriana', 'López', 'García', 'adriana.lg@cinecorp.com', '5512123434', 'F', '1996-05-21', 'Obrero Mundial', '300', 'Piedad Narvarte', '03000', 'Benito Juárez', 'V', 1;
EXEC dbo.sp_InsertarEmpleado 9, 'Andrés', 'Martínez', 'Hernández', 'andres.mh@cinecorp.com', '5523234545', 'M', '1991-02-11', 'Eugenia', '100', 'Del Valle', '03100', 'Benito Juárez', 'M', 2;
EXEC dbo.sp_InsertarEmpleado 10, 'Gabriela', 'González', 'Pérez', 'gaby.gp@cinecorp.com', '5534345656', 'F', '1999-09-30', 'Amores', '800', 'Del Valle', '03100', 'Benito Juárez', 'N', 1;
EXEC dbo.sp_InsertarEmpleado 11, 'Hugo', 'Díaz', 'Ramírez', 'hugo.dr@cinecorp.com', '5545456767', 'M', '1985-11-01', 'San Antonio', '450', 'Nápoles', '03810', 'Benito Juárez', 'V', 2;
EXEC dbo.sp_InsertarEmpleado 12, 'Valeria', 'Sánchez', 'Torres', 'vale.st@cinecorp.com', '5556567878', 'F', '2000-07-14', 'Insurgentes Sur', '900', 'Nápoles', '03810', 'Benito Juárez', 'M', 1;
EXEC dbo.sp_InsertarEmpleado 13, 'Fernando', 'Flores', 'Vázquez', 'fer.fv@cinecorp.com', '5567678989', 'M', '1994-01-05', 'Viaducto Tlalpan', '1200', 'San Lorenzo Huipulco', '14370', 'Tlalpan', 'N', 2;
EXEC dbo.sp_InsertarEmpleado 14, 'Mariana', 'Romero', 'Jiménez', 'mariana.rj@cinecorp.com', '5578789090', 'F', '1997-03-19', 'Acoxpa', '500', 'Villa Lázaro Cárdenas', '14370', 'Tlalpan', 'V', 1;
EXEC dbo.sp_InsertarEmpleado 15, 'Ricardo', 'Álvarez', 'Ruiz', 'ricardo.ar@cinecorp.com', '5589890101', 'M', '1988-08-08', 'Canal de Miramontes', '2500', 'Prado Coyoacán', '04810', 'Coyoacán', 'M', 2;
EXEC dbo.sp_InsertarEmpleado 16, 'Paula', 'Moreno', 'Suárez', 'paula.ms@cinecorp.com', '5590901212', 'F', '1995-06-25', 'Taxqueña', '1300', 'Campestre Churubusco', '04200', 'Coyoacán', 'N', 1;
EXEC dbo.sp_InsertarEmpleado 17, 'Daniel', 'Gutiérrez', 'Domínguez', 'daniel.gd@cinecorp.com', '5501012323', 'M', '1992-10-15', 'División del Norte', '3000', 'Ciudad Jardín', '04370', 'Coyoacán', 'V', 2;
EXEC dbo.sp_InsertarEmpleado 18, 'Jimena', 'Ortiz', 'Benítez', 'jimena.ob@cinecorp.com', '5512123435', 'F', '1998-04-03', 'Copilco', '150', 'Copilco Universidad', '04360', 'Coyoacán', 'M', 1;
EXEC dbo.sp_InsertarEmpleado 19, 'Alejandro', 'Silva', 'Castro', 'alex.sc@cinecorp.com', '5523234546', 'M', '1982-12-29', 'Eje 10 Sur', '50', 'Pedregal de Santo Domingo', '04369', 'Coyoacán', 'N', 2;
EXEC dbo.sp_InsertarEmpleado 20, 'Natalia', 'Mendoza', 'Ramos', 'natalia.mr@cinecorp.com', '5534345657', 'F', '1996-09-12', 'Antonio Delfin Madrigal', '80', 'Ciudad Universitaria', '04510', 'Coyoacán', 'V', 1;
EXEC dbo.sp_InsertarEmpleado 21, 'Eduardo', 'Castillo', 'Herrera', 'eduardo.ch@cinecorp.com', '5545456768', 'M', '1990-07-22', 'Anillo Periférico', '4000', 'Pedregal de Carrasco', '04700', 'Coyoacán', 'M', 2;
EXEC dbo.sp_InsertarEmpleado 22, 'Monica', 'Cruz', 'Medina', 'monica.cm@cinecorp.com', '5556567879', 'F', '1993-11-05', 'Av. del Iman', '600', 'Ajusco', '04300', 'Coyoacán', 'N', 1;
GO

-- --- Carga de 15 registros en Proveedores (IDs 3 a 17) ---
EXEC dbo.sp_InsertarProveedor 3, 'Dulcería La Alegría SA de CV', 'ALE150120ABC', 'ventas@dulceria.com', '5511223344', 'Poniente 116', '200', 'Capultitlan', '07370', 'Gustavo A. Madero';
EXEC dbo.sp_InsertarProveedor 4, 'ProyectoresMX', 'PMX100515XYZ', 'info@proyectoresmx.com', '5522334455', 'Norte 45', '800', 'Industrial Vallejo', '02300', 'Azcapotzalco';
EXEC dbo.sp_InsertarProveedor 5, 'Limpieza Estrella', 'LES051101QWE', 'contacto@limpiezaestrella.mx', '5533445566', 'Calle 10', '50', 'Agrícola Pantitlán', '08100', 'Iztacalco';
EXEC dbo.sp_InsertarProveedor 6, 'Refrescos del Centro', 'RCE980320RTY', 'pedidos@refrescoscentro.com', '5544556677', 'Sur 16', '150', 'Agrícola Oriental', '08500', 'Iztacalco';
EXEC dbo.sp_InsertarProveedor 7, 'Uniformes Premier', 'UPR121212FGH', 'atencion@uniformespremier.net', '5555667788', 'Av. Tláhuac', '5500', 'San Lorenzo Tezonco', '09790', 'Iztapalapa';
EXEC dbo.sp_InsertarProveedor 8, 'Carnes Selectas del Sur', 'CSS010810JKL', 'carnes.sur@mail.com', '5566778899', 'Calzada Ermita Iztapalapa', '3000', 'Santa Cruz Meyehualco', '09290', 'Iztapalapa';
EXEC dbo.sp_InsertarProveedor 9, 'Grupo Publicitario Visual', 'GPV090205MNO', 'visual@publicidad.com.mx', '5577889900', 'La Viga', '1000', 'Mexicaltzingo', '09080', 'Iztapalapa';
EXEC dbo.sp_InsertarProveedor 10, 'Seguridad Privada Centinela', 'SPC180722PQR', 'seguridad@centinela.org', '5588990011', 'Río Churubusco', '500', 'Gabriel Ramos Millán', '08000', 'Iztacalco';
EXEC dbo.sp_InsertarProveedor 11, 'Mantenimiento Integral MG', 'MIM110414STU', 'servicios@mimg.com', '5599001122', 'Plutarco Elías Calles', '700', 'Zapotla', '08610', 'Iztacalco';
EXEC dbo.sp_InsertarProveedor 12, 'Botanas Regionales Sol', 'BRS140618VWX', 'sol@botanas.com', '5500112233', 'Cuitláhuac', '250', 'Defensa Nacional', '02960', 'Azcapotzalco';
EXEC dbo.sp_InsertarProveedor 13, 'Café Gourmet Sierra Azul', 'CGS070925YZA', 'cafe.sierra@gourmet.net', '5511223345', 'Aquiles Serdán', '1800', 'Pasteros', '02150', 'Azcapotzalco';
EXEC dbo.sp_InsertarProveedor 14, 'Soluciones Tecnológicas Alfa', 'STA191010BCD', 'soporte@alfa-tech.com', '5522334456', 'Ingenieros Militares', '100', 'Argentina Poniente', '11230', 'Miguel Hidalgo';
EXEC dbo.sp_InsertarProveedor 15, 'Artículos de Oficina PapelMax', 'AOP030303EFG', 'papelmax@oficina.com.mx', '5533445567', 'Marina Nacional', '300', 'Anáhuac I Secc', '11320', 'Miguel Hidalgo';
EXEC dbo.sp_InsertarProveedor 16, 'Helados Artesanales Frío Rico', 'HAF171108HIJ', 'friorico@helados.com', '5544556678', 'Lago Alberto', '442', 'Anáhuac I Secc', '11320', 'Miguel Hidalgo';
EXEC dbo.sp_InsertarProveedor 17, 'Equipos de Audio ProSound', 'EAP130215KLM', 'prosound@equiposaudio.net', '5555667789', 'Newton', '150', 'Polanco', '11560', 'Miguel Hidalgo';
GO

-- c) Genere una vista de los últimos 3 registros de las tablas del punto anterior.

CREATE VIEW vw_Ultimos3Clientes AS
SELECT TOP 3 
    ID_Cliente, Nombre_Cliente, Ap_Pat_Cliente, Ap_Mat_Cliente, Correo_Cliente,
    Tel_Cliente, Genero_Cliente, Fecha_nac_Cliente, Calle_Cliente, Num_ext_Cliente,
    Colonia_Cliente, CP_Cliente, Alcaldia_Cliente
FROM
    clientes
ORDER BY
    ID_Cliente DESC; 
GO

-- Crear vista para los últimos 3 empleados
CREATE VIEW vw_Ultimos3Empleados AS
SELECT TOP 3
    ID_Empleados, Nombre_Empleados, Ap_Pat_Empleados, Ap_Mat_Empleados, Correo_Empleados,
    Tel_Empleados, Genero_Empleados, Fecha_nac_Empleados, Calle_Empleados, Num_Empleados,
    Colonia_Empleados, CP_Empleados, Alcaldia_Empleados, Turno_Empleados, ID_Sucursales
FROM
    empleados
ORDER BY
    ID_Empleados DESC;
GO

-- Crear vista para los últimos 3 proveedores
CREATE VIEW vw_Ultimos3Proveedores AS
SELECT TOP 3
    ID_Proveedores, Nom_Proveedor, RFC_Proveedor, Correo_Proveedor,
    Tel_Proveedor, Calle_Proveedor, Num_Proveedor, Colonia_Proveedor,
    CP_Proveedor, Alcaldia_Proveedor
FROM
    proveedores
ORDER BY
    ID_Proveedores DESC;
GO
-- Mostrar el contenido de las vistas creadas
SELECT * FROM vw_Ultimos3Clientes;
GO
SELECT * FROM vw_Ultimos3Empleados;
GO
SELECT * FROM vw_Ultimos3Proveedores;
GO

-- d) Cree una nueva tabla llamada “Reporte1” y en ella guarde 5 registros aleatorios de cada tabla del inciso (b).

CREATE TABLE Reporte1 (
    ReporteID INT IDENTITY(1,1) PRIMARY KEY, -- Clave Primaria Autoincremental
    TipoRegistro VARCHAR(20) NOT NULL,       -- 'Cliente', 'Empleado', 'Proveedor'
    FuenteID INT NOT NULL,                    -- ID de la tabla original
    NombrePrincipal VARCHAR(255),             -- Nombre del Cliente/Empleado/Proveedor
    FechaCarga DATETIME DEFAULT GETDATE()     -- Fecha y hora de inserción
);
GO

-- Insertar 5 registros aleatorios de Clientes
INSERT INTO Reporte1 (TipoRegistro, FuenteID, NombrePrincipal)
SELECT TOP 5
    'Cliente' AS TipoRegistro,
    ID_Cliente AS FuenteID,
    -- Concatenar nombre completo para clientes
    Nombre_Cliente + ' ' + Ap_Pat_Cliente + COALESCE(' ' + Ap_Mat_Cliente, '') AS NombrePrincipal
FROM
    clientes
ORDER BY
    NEWID(); 
GO

-- Insertar 5 registros aleatorios de Empleados
INSERT INTO Reporte1 (TipoRegistro, FuenteID, NombrePrincipal)
SELECT TOP 5
    'Empleado' AS TipoRegistro,
    ID_Empleados AS FuenteID,
    -- Concatenar nombre completo para empleados
    Nombre_Empleados + ' ' + Ap_Pat_Empleados + COALESCE(' ' + Ap_Mat_Empleados, '') AS NombrePrincipal
FROM
    empleados
ORDER BY
    NEWID();
GO

-- Insertar 5 registros aleatorios de Proveedores
INSERT INTO Reporte1 (TipoRegistro, FuenteID, NombrePrincipal)
SELECT TOP 5
    'Proveedor' AS TipoRegistro,
    ID_Proveedores AS FuenteID,
    Nom_Proveedor AS NombrePrincipal 
FROM
    proveedores
ORDER BY
    NEWID();
GO

-- Mostrar el contenido de la nueva tabla
SELECT * FROM Reporte1 ORDER BY TipoRegistro, FuenteID;
GO

-- e) Genere una nueva tabla nombrada “ListaDomicilio” y agregue los últimos 5 registros de cada tabla del inciso (b)

CREATE TABLE ListaDomicilio (
    ListaID INT IDENTITY(1,1) PRIMARY KEY,    -- Clave Primaria Autoincremental
    TipoRegistro VARCHAR(20) NOT NULL,       -- 'Cliente', 'Empleado', 'Proveedor'
    FuenteID INT NOT NULL,                    -- ID de la tabla original
    Calle VARCHAR(255),
    Numero VARCHAR(10),                       -- Para permitir '123A', etc.
    Colonia VARCHAR(100),
    CodigoPostal VARCHAR(10),
    Alcaldia VARCHAR(100),
    FechaCarga DATETIME DEFAULT GETDATE()     -- Fecha y hora de inserción
);
GO

-- Insertar los últimos 5 registros de Clientes
-- (Ordenamos por ID descendente y tomamos los 5 primeros)
INSERT INTO ListaDomicilio (TipoRegistro, FuenteID, Calle, Numero, Colonia, CodigoPostal, Alcaldia)
SELECT TOP 5
    'Cliente' AS TipoRegistro,
    ID_Cliente AS FuenteID,
    Calle_Cliente,
    Num_ext_Cliente, -- Nombre específico de la columna en Clientes
    Colonia_Cliente,
    CP_Cliente,
    Alcaldia_Cliente
FROM
    clientes
ORDER BY
    ID_Cliente DESC;
GO

-- Insertar los últimos 5 registros de Empleados
INSERT INTO ListaDomicilio (TipoRegistro, FuenteID, Calle, Numero, Colonia, CodigoPostal, Alcaldia)
SELECT TOP 5
    'Empleado' AS TipoRegistro,
    ID_Empleados AS FuenteID,
    Calle_Empleados,
    Num_Empleados, -- Nombre específico de la columna en Empleados
    Colonia_Empleados,
    CP_Empleados,
    Alcaldia_Empleados
FROM
    empleados
ORDER BY
    ID_Empleados DESC;
GO

-- Insertar los últimos 5 registros de Proveedores
INSERT INTO ListaDomicilio (TipoRegistro, FuenteID, Calle, Numero, Colonia, CodigoPostal, Alcaldia)
SELECT TOP 5
    'Proveedor' AS TipoRegistro,
    ID_Proveedores AS FuenteID,
    Calle_Proveedor,
    Num_Proveedor, -- Nombre específico de la columna en Proveedores
    Colonia_Proveedor,
    CP_Proveedor,
    Alcaldia_Proveedor
FROM
    proveedores
ORDER BY
    ID_Proveedores DESC;
GO

-- Mostrar el contenido de la nueva tabla
SELECT * FROM ListaDomicilio ORDER BY TipoRegistro, FuenteID;
GO

-- f) Genere una nueva tabla nombrada “NuevoRegistro” y una la información de las tablas de los incisos (d) y (e).

CREATE TABLE NuevoRegistro (
    NuevoRegistroID INT IDENTITY(1,1) PRIMARY KEY, -- Clave Primaria Autoincremental
    TipoRegistro VARCHAR(20) NOT NULL,
    FuenteID INT NOT NULL,
    NombrePrincipal VARCHAR(255) NULL,       -- Puede ser NULL si solo está en ListaDomicilio
    Calle VARCHAR(255) NULL,                 -- Puede ser NULL si solo está en Reporte1
    Numero VARCHAR(10) NULL,
    Colonia VARCHAR(100) NULL,
    CodigoPostal VARCHAR(10) NULL,
    Alcaldia VARCHAR(100) NULL,
    FechaCargaReporte DATETIME NULL,
    FechaCargaDomicilio DATETIME NULL
);
GO

-- Unir la información de Reporte1 y ListaDomicilio e insertarla en NuevoRegistro
INSERT INTO NuevoRegistro (
    TipoRegistro,
    FuenteID,
    NombrePrincipal,
    Calle,
    Numero,
    Colonia,
    CodigoPostal,
    Alcaldia,
    FechaCargaReporte,
    FechaCargaDomicilio
)
SELECT
    -- Usar COALESCE para obtener TipoRegistro y FuenteID de cualquiera de las tablas que no sea NULL
    COALESCE(r1.TipoRegistro, ld.TipoRegistro) AS TipoRegistro,
    COALESCE(r1.FuenteID, ld.FuenteID) AS FuenteID,
    r1.NombrePrincipal, -- Nombre viene de Reporte1 (será NULL si no está en Reporte1)
    ld.Calle,           -- Dirección viene de ListaDomicilio (será NULL si no está en ListaDomicilio)
    ld.Numero,
    ld.Colonia,
    ld.CodigoPostal,
    ld.Alcaldia,
    r1.FechaCarga AS FechaCargaReporte, -- Fecha de carga de Reporte1
    ld.FechaCarga AS FechaCargaDomicilio -- Fecha de carga de ListaDomicilio
FROM
    Reporte1 AS r1
FULL OUTER JOIN -- Une todo de ambas tablas, coincidiendo donde sea posible
    ListaDomicilio AS ld ON r1.TipoRegistro = ld.TipoRegistro AND r1.FuenteID = ld.FuenteID;
GO
-- Mostrar el contenido de la nueva tabla
SELECT * FROM NuevoRegistro ORDER BY TipoRegistro, FuenteID;
GO

-- g) Genere un índice en la última tabla generada.

CREATE NONCLUSTERED INDEX IX_NuevoRegistro_TipoFuente -- Nombre descriptivo del índice
ON NuevoRegistro (TipoRegistro, FuenteID);           -- Tabla y columnas a indexar
GO
-- Mostrar el contenido de la nueva tabla
SELECT * FROM NuevoRegistro ORDER BY TipoRegistro, FuenteID;
GO

-- h) Genere, por cada tabla nueva, una vista con la información que contiene cada una.

CREATE VIEW vw_Reporte1 AS
SELECT
    ReporteID,
    TipoRegistro,
    FuenteID,
    NombrePrincipal,
    FechaCarga
FROM
    Reporte1;
GO

-- Crear la vista para ListaDomicilio
CREATE VIEW vw_ListaDomicilio AS
SELECT
    ListaID,
    TipoRegistro,
    FuenteID,
    Calle,
    Numero,
    Colonia,
    CodigoPostal,
    Alcaldia,
    FechaCarga
FROM
    ListaDomicilio;
GO

-- Crear la vista para NuevoRegistro
CREATE VIEW vw_NuevoRegistro AS
SELECT
    NuevoRegistroID,
    TipoRegistro,
    FuenteID,
    NombrePrincipal,
    Calle,
    Numero,
    Colonia,
    CodigoPostal,
    Alcaldia,
    FechaCargaReporte,
    FechaCargaDomicilio
FROM
    NuevoRegistro;
GO

-- Mostrar brevemente el contenido de las vistas creadas
SELECT TOP 5 * FROM vw_Reporte1;
GO
SELECT TOP 5 * FROM vw_ListaDomicilio;
GO
SELECT TOP 5 * FROM vw_NuevoRegistro;
GO

-- i) Genere una tabla nombrada “Registro2” con registros de hombre y mujeres bajo las siguientes condiciones:
--	i. Que tengan edad entre 25 y 31 años
--	ii. Que tengan los últimos registros de domicilio de cada tabla del inciso (b).
--	iii. Realice una copia de esta última tabla
--	iv. Posteriormente regrese a su versión original de la tabla.

CREATE TABLE Registro2 (
    Registro2ID INT IDENTITY(1,1) PRIMARY KEY,
    TipoPersona VARCHAR(20) NOT NULL,
    PersonaID INT NOT NULL,
    NombreCompleto VARCHAR(255),
    Genero CHAR(1),
    FechaNacimiento DATE,
    EdadCalculada INT,
    Calle VARCHAR(255),
    Numero VARCHAR(10),
    Colonia VARCHAR(100),
    CodigoPostal VARCHAR(10),
    Alcaldia VARCHAR(100)
);
GO

-- Insertar los registros que cumplen las condiciones en Registro2
INSERT INTO Registro2 (
    TipoPersona, PersonaID, NombreCompleto, Genero, FechaNacimiento,
    EdadCalculada, Calle, Numero, Colonia, CodigoPostal, Alcaldia
)
SELECT
    'Cliente' AS TipoPersona, c.ID_Cliente AS PersonaID,
    c.Nombre_Cliente + ' ' + c.Ap_Pat_Cliente + COALESCE(' ' + c.Ap_Mat_Cliente, '') AS NombreCompleto,
    c.Genero_Cliente AS Genero, c.Fecha_nac_Cliente AS FechaNacimiento,
    (DATEDIFF(YEAR, c.Fecha_nac_Cliente, GETDATE()) -
        CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, c.Fecha_nac_Cliente, GETDATE()), c.Fecha_nac_Cliente) > GETDATE() THEN 1 ELSE 0 END) AS EdadCalculada,
    ld.Calle, ld.Numero, ld.Colonia, ld.CodigoPostal, ld.Alcaldia
FROM clientes c
INNER JOIN ListaDomicilio ld ON c.ID_Cliente = ld.FuenteID AND ld.TipoRegistro = 'Cliente'
WHERE (DATEDIFF(YEAR, c.Fecha_nac_Cliente, GETDATE()) -
        CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, c.Fecha_nac_Cliente, GETDATE()), c.Fecha_nac_Cliente) > GETDATE() THEN 1 ELSE 0 END) BETWEEN 25 AND 31
UNION ALL
SELECT
    'Empleado' AS TipoPersona, e.ID_Empleados AS PersonaID,
    e.Nombre_Empleados + ' ' + e.Ap_Pat_Empleados + COALESCE(' ' + e.Ap_Mat_Empleados, '') AS NombreCompleto,
    e.Genero_Empleados AS Genero, e.Fecha_nac_Empleados AS FechaNacimiento,
    (DATEDIFF(YEAR, e.Fecha_nac_Empleados, GETDATE()) -
        CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, e.Fecha_nac_Empleados, GETDATE()), e.Fecha_nac_Empleados) > GETDATE() THEN 1 ELSE 0 END) AS EdadCalculada,
    ld.Calle, ld.Numero, ld.Colonia, ld.CodigoPostal, ld.Alcaldia
FROM empleados e
INNER JOIN ListaDomicilio ld ON e.ID_Empleados = ld.FuenteID AND ld.TipoRegistro = 'Empleado'
WHERE (DATEDIFF(YEAR, e.Fecha_nac_Empleados, GETDATE()) -
        CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, e.Fecha_nac_Empleados, GETDATE()), e.Fecha_nac_Empleados) > GETDATE() THEN 1 ELSE 0 END) BETWEEN 25 AND 31;
GO

-- Mostrar el contenido de Registro2 antes de la transacción
SELECT * FROM Registro2 ORDER BY TipoPersona, PersonaID;
GO

-- --- Parte i.iii y i.iv: Copiar y "regresar" (eliminar copia) DENTRO DE UNA TRANSACCIÓN ---

BEGIN TRANSACTION T_CopiarYRegresar; -- Iniciar transacción con un nombre
BEGIN TRY
    -- Paso iii: Realizar una copia de Registro2

    -- Crear la copia usando SELECT INTO
    SELECT *
    INTO Registro2_Copia -- Nueva tabla que se creará
    FROM Registro2;       -- Tabla origen

    -- Paso iv: "Regresar a la versión original" (interpretado como eliminar la copia)
    DROP TABLE dbo.Registro2_Copia;

    -- Si todo fue exitoso, confirmar la transacción
    COMMIT TRANSACTION T_CopiarYRegresar;

END TRY
BEGIN CATCH
    -- Verificar si hay una transacción activa para deshacer
    IF @@TRANCOUNT > 0
    BEGIN
        ROLLBACK TRANSACTION T_CopiarYRegresar; -- Deshacer todos los cambios de la transacción
    END
END CATCH;
GO

-- Mostrar el estado final (Registro2 no debería haber cambiado, Registro2_Copia no debería existir)
SELECT * FROM Registro2 ORDER BY TipoPersona, PersonaID;
GO


-- j) Integre la nueva versión del DER con las últimas modificaciones realizadas antes de realizar la regresión de la base de datos.