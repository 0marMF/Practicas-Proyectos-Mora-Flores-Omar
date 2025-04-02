-- Seleccionar la base de datos
USE RENAPO_Familias;
GO

-- Tabla para Representante de Familia
CREATE TABLE RepresentantesFamilia (
    RepresentanteID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL,
    ApellidoPaterno NVARCHAR(50) NOT NULL,
    ApellidoMaterno NVARCHAR(50) NOT NULL,
    EstadoCivil NVARCHAR(20),
    PuestoLaboral NVARCHAR(50),
    IngresoMensual DECIMAL(10,2),
    GradoAcademico NVARCHAR(50)
);
GO

-- Tabla para Empleado de RENAPO
CREATE TABLE Empleados (
    EmpleadoID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL,
    ApellidoPaterno NVARCHAR(50) NOT NULL,
    ApellidoMaterno NVARCHAR(50) NOT NULL,
    NumeroEmpleado INT NOT NULL UNIQUE,
    Genero CHAR(1) NOT NULL, -- 'M' para masculino, 'F' para femenino
    Puesto NVARCHAR(50),
    Antiguedad INT,         -- Años de servicio
    RFC CHAR(13)
);
GO

-- Tabla para Trabajador Social
CREATE TABLE TrabajadoresSociales (
    TrabajadorSocialID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL,
    ApellidoPaterno NVARCHAR(50) NOT NULL,
    ApellidoMaterno NVARCHAR(50) NOT NULL,
    NumeroTrabajadorSocial INT NOT NULL UNIQUE,
    Genero CHAR(1) NOT NULL, -- 'M' o 'F'
    RFC CHAR(13)
);
GO

-- Tabla para Vivienda
CREATE TABLE Viviendas (
    ViviendaID INT IDENTITY(1,1) PRIMARY KEY,
    Calle NVARCHAR(100),
    CP NVARCHAR(10),
    Municipio NVARCHAR(50),
    NumeroInt INT,     -- Número interior
    NumeroExt INT,     -- Número exterior
    Colonia NVARCHAR(50),
    Estado NVARCHAR(50),
    Descripcion NVARCHAR(200)
);
GO

-- Tabla central Familia que relaciona las demás entidades
CREATE TABLE Familias (
    FamiliaID INT IDENTITY(1,1) PRIMARY KEY,
    RepresentanteID INT NOT NULL UNIQUE,  -- Relación 1:1 (cada familia tiene un único representante)
    EmpleadoID INT NOT NULL,                -- Relación 1:N (un empleado puede tener varias familias)
    TrabajadorSocialID INT NOT NULL,        -- Relación 1:N (un trabajador social puede tener varias familias)
    ViviendaID INT NOT NULL UNIQUE,         -- Relación 1:1 (una vivienda es el hogar de una única familia)
    FOREIGN KEY (RepresentanteID) REFERENCES RepresentantesFamilia(RepresentanteID),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID),
    FOREIGN KEY (TrabajadorSocialID) REFERENCES TrabajadoresSociales(TrabajadorSocialID),
    FOREIGN KEY (ViviendaID) REFERENCES Viviendas(ViviendaID)
);
GO
