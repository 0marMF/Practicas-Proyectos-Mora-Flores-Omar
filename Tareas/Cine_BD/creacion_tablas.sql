-- --- USAR LA BASE DE DATOS ---
USE CineDB;
GO

-- =============================================
-- --- CREACIÓN DE TABLAS ---
-- =============================================

-- 1. Tabla Cliente
PRINT 'Creando Tabla Cliente...'
CREATE TABLE Cliente (
    Cliente_ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Apellido_Paterno NVARCHAR(100) NOT NULL,
    Apellido_Materno NVARCHAR(100) NULL,
    Email NVARCHAR(255) NOT NULL UNIQUE,
    Telefono NVARCHAR(20) NULL,
    Genero NCHAR(1) NULL,
    Edad INT NULL,
    Direccion NVARCHAR(500) NULL,
    CONSTRAINT CK_Cliente_Genero CHECK (Genero IS NULL OR Genero IN (N'H', N'M')),
    CONSTRAINT CK_Cliente_Edad CHECK (Edad IS NULL OR Edad >= 0)
);
GO

-- 2. Tabla Pelicula
PRINT 'Creando Tabla Pelicula...'
CREATE TABLE Pelicula (
    Pelicula_ID INT IDENTITY(1,1) PRIMARY KEY,
    Titulo NVARCHAR(255) NOT NULL,
    Director NVARCHAR(150) NULL,
    Genero NVARCHAR(100) NULL,
    Clasificacion NVARCHAR(10) NOT NULL,
    Duracion_Minutos INT NOT NULL,
    Sinopsis NVARCHAR(MAX) NULL,
    Año_Estreno INT NULL,
    Idioma_Original NVARCHAR(50) NULL
);
GO

-- 3. Tabla Promocion
PRINT 'Creando Tabla Promocion...'
CREATE TABLE Promocion (
    Promocion_ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre_Promocion NVARCHAR(150) NOT NULL,
    Descripcion NVARCHAR(500) NOT NULL,
    Tipo_Descuento NVARCHAR(50) NOT NULL,
    Valor_Descuento DECIMAL(10, 2) NULL,
    Fecha_Inicio_Vigencia DATE NOT NULL,
    Fecha_Fin_Vigencia DATE NOT NULL,
    Condiciones NVARCHAR(MAX) NULL,
    Activa BIT DEFAULT 1 NOT NULL
);
GO

-- 4. Tabla Producto
PRINT 'Creando Tabla Producto...'
CREATE TABLE Producto (
    Producto_ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(150) NOT NULL,
    Descripcion NVARCHAR(500) NULL,
    Precio_Venta DECIMAL(10, 2) NOT NULL,
    Categoria NVARCHAR(100) NOT NULL,
    Activo BIT DEFAULT 1 NOT NULL
);
GO

-- 5. Tabla Sucursal
PRINT 'Creando Tabla Sucursal...'
CREATE TABLE Sucursal (
    Sucursal_ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(150) NOT NULL,
    Direccion NVARCHAR(500) NOT NULL,
    Ciudad NVARCHAR(100) NOT NULL,
    Estado NVARCHAR(100) NOT NULL,
    Codigo_Postal NVARCHAR(10) NOT NULL,
    Telefono NVARCHAR(20) NULL,
    Numero_Salas INT NOT NULL,
    Gerente_ID INT NULL
);
GO

-- 6. Tabla Empleado
PRINT 'Creando Tabla Empleado...'
CREATE TABLE Empleado (
    Empleado_ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Apellido_Paterno NVARCHAR(100) NOT NULL,
    Apellido_Materno NVARCHAR(100) NULL,
    Genero NCHAR(1) NULL,
    Edad INT NULL,
    RFC NVARCHAR(13) NULL UNIQUE,
    NSS NVARCHAR(11) NULL UNIQUE,
    Puesto NVARCHAR(100) NOT NULL,
    Fecha_Contratacion DATE NOT NULL,
    Salario DECIMAL(12, 2) NULL,
    Email_Corporativo NVARCHAR(255) NOT NULL UNIQUE,
    Telefono_Corporativo NVARCHAR(20) NULL,
    Sucursal_ID INT NOT NULL,
    CONSTRAINT CK_Empleado_Genero CHECK (Genero IS NULL OR Genero IN (N'H', N'M')),
    CONSTRAINT CK_Empleado_Edad CHECK (Edad IS NULL OR Edad >= 0),
    CONSTRAINT FK_Empleado_Sucursal FOREIGN KEY (Sucursal_ID) REFERENCES Sucursal(Sucursal_ID)
        ON DELETE NO ACTION -- CORREGIDO
        ON UPDATE NO ACTION -- CORREGIDO
);
GO

-- Añadir FK de Gerente_ID a Sucursal
PRINT 'Añadiendo FK Gerente_ID a Sucursal...'
ALTER TABLE Sucursal
ADD CONSTRAINT FK_Sucursal_Gerente FOREIGN KEY (Gerente_ID) REFERENCES Empleado(Empleado_ID)
    ON DELETE NO ACTION -- CORREGIDO
    ON UPDATE NO ACTION -- CORREGIDO
;
GO

-- 7. Tabla Proveedor
PRINT 'Creando Tabla Proveedor...'
CREATE TABLE Proveedor (
    Proveedor_ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre_Empresa NVARCHAR(255) NOT NULL,
    RFC NVARCHAR(13) NULL UNIQUE,
    Contacto_Nombre NVARCHAR(150) NULL,
    Contacto_Email NVARCHAR(255) NULL,
    Contacto_Telefono NVARCHAR(20) NULL,
    Direccion NVARCHAR(500) NULL,
    Empleado_ID_Atiende INT NOT NULL,
    CONSTRAINT FK_Proveedor_Empleado FOREIGN KEY (Empleado_ID_Atiende) REFERENCES Empleado(Empleado_ID)
        ON DELETE NO ACTION -- Mantenido (o ajustar según reglas de negocio)
        ON UPDATE CASCADE  -- Mantenido (o ajustar según reglas de negocio)
        -- Nota: Si esta FK también causara problemas, cambiar a NO ACTION.
);
GO

-- 8. Tabla Funcion
PRINT 'Creando Tabla Funcion...'
CREATE TABLE Funcion (
    Funcion_ID INT IDENTITY(1,1) PRIMARY KEY,
    Fecha_Hora_Inicio DATETIME2 NOT NULL,
    Sala_Numero NVARCHAR(10) NOT NULL,
    Tipo_Formato NVARCHAR(50) NOT NULL,
    Idioma_Proyeccion NVARCHAR(50) NOT NULL,
    Pelicula_ID INT NOT NULL,
    Sucursal_ID INT NOT NULL,
    Proveedor_ID INT NULL,
    CONSTRAINT FK_Funcion_Pelicula FOREIGN KEY (Pelicula_ID) REFERENCES Pelicula(Pelicula_ID)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
    CONSTRAINT FK_Funcion_Sucursal FOREIGN KEY (Sucursal_ID) REFERENCES Sucursal(Sucursal_ID)
        ON DELETE CASCADE -- Mantenido (Borrar funciones si se borra sucursal)
        ON UPDATE CASCADE,
    CONSTRAINT FK_Funcion_Proveedor FOREIGN KEY (Proveedor_ID) REFERENCES Proveedor(Proveedor_ID)
        ON DELETE NO ACTION -- CORREGIDO
        ON UPDATE NO ACTION -- CORREGIDO
);
GO

-- 9. Tabla Venta
PRINT 'Creando Tabla Venta...'
CREATE TABLE Venta (
    Venta_ID INT IDENTITY(1,1) PRIMARY KEY,
    Fecha_Hora_Venta DATETIME2 DEFAULT GETDATE() NOT NULL,
    Monto_Total DECIMAL(12, 2) NOT NULL,
    Metodo_Pago NVARCHAR(50) NOT NULL,
    Empleado_ID INT NOT NULL,
    Cliente_ID INT NULL,
    Promocion_ID INT NULL,
    CONSTRAINT FK_Venta_Empleado FOREIGN KEY (Empleado_ID) REFERENCES Empleado(Empleado_ID)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
    CONSTRAINT FK_Venta_Cliente FOREIGN KEY (Cliente_ID) REFERENCES Cliente(Cliente_ID)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT FK_Venta_Promocion FOREIGN KEY (Promocion_ID) REFERENCES Promocion(Promocion_ID)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
GO

-- 10. Tabla Venta_Detalle
PRINT 'Creando Tabla Venta_Detalle...'
CREATE TABLE Venta_Detalle (
    Venta_Detalle_ID INT IDENTITY(1,1) PRIMARY KEY,
    Venta_ID INT NOT NULL,
    Funcion_ID INT NULL,
    Producto_ID INT NULL,
    Cantidad INT NOT NULL CHECK (Cantidad > 0),
    Precio_Unitario DECIMAL(10, 2) NOT NULL,
    Subtotal AS (CAST(Cantidad AS DECIMAL(10,2)) * Precio_Unitario) PERSISTED,
    CONSTRAINT FK_VentaDetalle_Venta FOREIGN KEY (Venta_ID) REFERENCES Venta(Venta_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT FK_VentaDetalle_Funcion FOREIGN KEY (Funcion_ID) REFERENCES Funcion(Funcion_ID)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT FK_VentaDetalle_Producto FOREIGN KEY (Producto_ID) REFERENCES Producto(Producto_ID)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT CK_VentaDetalle_Tipo CHECK (
        (Funcion_ID IS NOT NULL AND Producto_ID IS NULL) OR (Funcion_ID IS NULL AND Producto_ID IS NOT NULL)
    )
);
GO -- Asegurarse que no haya caracteres extraños antes de este GO

-- 11. Tabla Cliente_Asiste_Sucursal
PRINT 'Creando Tabla Cliente_Asiste_Sucursal...'
CREATE TABLE Cliente_Asiste_Sucursal (
    Cliente_ID INT NOT NULL,
    Sucursal_ID INT NOT NULL,
    Fecha_Visita DATETIME2 NOT NULL,
    CONSTRAINT PK_Cliente_Asiste_Sucursal PRIMARY KEY (Cliente_ID, Sucursal_ID, Fecha_Visita),
    CONSTRAINT FK_ClienteAsiste_Cliente FOREIGN KEY (Cliente_ID) REFERENCES Cliente(Cliente_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT FK_ClienteAsiste_Sucursal FOREIGN KEY (Sucursal_ID) REFERENCES Sucursal(Sucursal_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

-- 12. Tabla Proveedor_Suministra_Sucursal
PRINT 'Creando Tabla Proveedor_Suministra_Sucursal...'
CREATE TABLE Proveedor_Suministra_Sucursal (
    Proveedor_ID INT NOT NULL,
    Sucursal_ID INT NOT NULL,
    Fecha_Entrega DATETIME2 NOT NULL,
    Detalle_Suministro NVARCHAR(500) NULL,
    CONSTRAINT PK_Proveedor_Suministra_Sucursal PRIMARY KEY (Proveedor_ID, Sucursal_ID, Fecha_Entrega),
    CONSTRAINT FK_ProveedorSuministra_Proveedor FOREIGN KEY (Proveedor_ID) REFERENCES Proveedor(Proveedor_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT FK_ProveedorSuministra_Sucursal FOREIGN KEY (Sucursal_ID) REFERENCES Sucursal(Sucursal_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

PRINT '*** Creación completa de la estructura de la base de datos CineDB (Versión Corregida) ***'
GO