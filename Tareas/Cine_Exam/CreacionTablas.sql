USE cine;
GO

-- Crear tabla Clientes
IF OBJECT_ID('dbo.clientes', 'U') IS NULL -- Verificar si la tabla ya existe
BEGIN
    CREATE TABLE clientes (
        ID_Cliente INT PRIMARY KEY,
        Nombre_Cliente VARCHAR(100) NOT NULL,
        Ap_Pat_Cliente VARCHAR(100) NOT NULL,
        Ap_Mat_Cliente VARCHAR(100),
        Correo_Cliente VARCHAR(255) UNIQUE, -- Correo debería ser único
        Tel_Cliente VARCHAR(15),
        Genero_Cliente CHAR(1),
        Fecha_nac_Cliente DATE,
        Calle_Cliente VARCHAR(255),
        Num_ext_Cliente VARCHAR(10), -- Puede incluir letras como '123A'
        Colonia_Cliente VARCHAR(100),
        CP_Cliente VARCHAR(10),
        Alcaldia_Cliente VARCHAR(100)
    );
END
GO

-- Crear tabla Proveedores
IF OBJECT_ID('dbo.proveedores', 'U') IS NULL
BEGIN
    CREATE TABLE proveedores (
        ID_Proveedores INT PRIMARY KEY,
        Nom_Proveedor VARCHAR(255) NOT NULL,
        RFC_Proveedor VARCHAR(13) UNIQUE, -- RFC debería ser único
        Correo_Proveedor VARCHAR(255),
        Tel_Proveedor VARCHAR(15),
        Calle_Proveedor VARCHAR(255),
        Num_Proveedor VARCHAR(10),
        Colonia_Proveedor VARCHAR(100),
        CP_Proveedor VARCHAR(10),
        Alcaldia_Proveedor VARCHAR(100)
    );
END
GO

-- Crear tabla Peliculas
IF OBJECT_ID('dbo.peliculas', 'U') IS NULL
BEGIN
    CREATE TABLE peliculas (
        ID_Peliculas INT PRIMARY KEY,
        Titulo_Pelicula VARCHAR(255) NOT NULL,
        Genero_Peliculas VARCHAR(100),
        Clasificacion_Peliculas VARCHAR(5), -- Ej: 'A', 'B', 'B15'
        Duracion_Peliculas INT -- Duración en minutos
    );
END
GO

-- Crear tabla Sucursales
IF OBJECT_ID('dbo.sucursales', 'U') IS NULL
BEGIN
    CREATE TABLE sucursales (
        ID_Sucursales INT PRIMARY KEY,
        Nombre_Sucursal VARCHAR(100) NOT NULL, -- Corregido 'Nomre_sucursal'
        Calle_Sucursal VARCHAR(255),
        Num_Sucursal VARCHAR(10),
        Colonia_Sucursal VARCHAR(100),
        Ciudad_Sucursal VARCHAR(100),
        Tel_Sucursal VARCHAR(15),
        -- Estas FK parecen inusuales aquí, pero las mantengo según el INSERT original
        ID_Cliente INT,
        ID_Proveedores INT,
        FOREIGN KEY (ID_Cliente) REFERENCES clientes(ID_Cliente),
        FOREIGN KEY (ID_Proveedores) REFERENCES proveedores(ID_Proveedores)
    );
END
GO

-- Crear tabla Empleados
IF OBJECT_ID('dbo.empleados', 'U') IS NULL
BEGIN
    CREATE TABLE empleados (
        ID_Empleados INT PRIMARY KEY,
        Nombre_Empleados VARCHAR(100) NOT NULL,
        Ap_Pat_Empleados VARCHAR(100) NOT NULL,
        Ap_Mat_Empleados VARCHAR(100),
        Correo_Empleados VARCHAR(255) UNIQUE,
        Tel_Empleados VARCHAR(15),
        Genero_Empleados CHAR(1),
        Fecha_nac_Empleados DATE,
        Calle_Empleados VARCHAR(255),
        Num_Empleados VARCHAR(10),
        Colonia_Empleados VARCHAR(100),
        CP_Empleados VARCHAR(10),
        Alcaldia_Empleados VARCHAR(100),
        Turno_Empleados CHAR(1), -- 'M', 'V', 'N'
        ID_Sucursales INT,
        FOREIGN KEY (ID_Sucursales) REFERENCES sucursales(ID_Sucursales)
    );
END
GO

-- Crear tabla Funciones
IF OBJECT_ID('dbo.funciones', 'U') IS NULL
BEGIN
    CREATE TABLE funciones (
        ID_Funciones INT PRIMARY KEY,
        Fecha_Funciones DATE NOT NULL,
        Hora_Funcion TIME NOT NULL,
        Precio_Funciones DECIMAL(8, 2), -- Precisión para precios
        ID_Peliculas INT,
        ID_Sucursales INT,
        FOREIGN KEY (ID_Peliculas) REFERENCES peliculas(ID_Peliculas),
        FOREIGN KEY (ID_Sucursales) REFERENCES sucursales(ID_Sucursales)
    );
END
GO

-- Crear tabla Ventas
IF OBJECT_ID('dbo.ventas', 'U') IS NULL
BEGIN
    CREATE TABLE ventas (
        ID_Ventas INT PRIMARY KEY,
        Fecha_Ventas DATE NOT NULL,
        Hora_Venta TIME NOT NULL,
        Total_Venta DECIMAL(10, 2), -- Precisión para totales
        ID_Empleados INT,
        ID_Funciones INT,
        FOREIGN KEY (ID_Empleados) REFERENCES empleados(ID_Empleados),
        FOREIGN KEY (ID_Funciones) REFERENCES funciones(ID_Funciones)
    );
END
GO

-- Crear tabla Promociones
IF OBJECT_ID('dbo.promociones', 'U') IS NULL
BEGIN
    CREATE TABLE promociones (
        ID_Promociones INT PRIMARY KEY,
        Porcentaje_Promocion INT, -- Porcentaje como entero
        Descripcion_Promocion VARCHAR(255),
        Fecha_inicio_promocion DATE,
        Fecha_termino_promocion DATE,
        ID_Cliente INT,
        ID_Ventas INT,
        FOREIGN KEY (ID_Cliente) REFERENCES clientes(ID_Cliente),
        FOREIGN KEY (ID_Ventas) REFERENCES ventas(ID_Ventas)
    );
END
GO