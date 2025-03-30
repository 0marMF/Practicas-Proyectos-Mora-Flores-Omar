-- Seleccionar la base de datos
USE gimnasio_BD;
GO

-- Crear la tabla gerente
CREATE TABLE gerente (
    id_gerente INT IDENTITY(1,1) PRIMARY KEY,  -- Llave primaria con incremento autom tico
    nombre_g VARCHAR(50) NOT NULL,
    apellido_g VARCHAR(50) NOT NULL,
    telefono_g VARCHAR(15),
    email_g VARCHAR(100),
    RFC VARCHAR(13),
    contraseña_g VARCHAR(100) NOT NULL
);
GO

-- Crear la tabla miembros con una llave for nea a gerente
CREATE TABLE miembros (
    id_miembro INT IDENTITY(1,1) PRIMARY KEY,
    nombre_m VARCHAR(50) NOT NULL,
    apellido_m VARCHAR(50) NOT NULL,
    telefono_m VARCHAR(15),
    email_m VARCHAR(100),
    fecha_inicio DATE NOT NULL,
    fecha_venci DATE NOT NULL,
    membresia VARCHAR(50),
    id_gerente INT NULL,  -- Se permite NULL para poder usar ON DELETE SET NULL
    CONSTRAINT fk_id_gerente FOREIGN KEY (id_gerente)
        REFERENCES gerente(id_gerente)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
GO

-- Crear la tabla acceso
CREATE TABLE acceso (
    id_acceso INT IDENTITY(1,1) PRIMARY KEY,
    fecha_ingreso DATE NOT NULL,
    hora_ingreso TIME NOT NULL,
    estado_acceso VARCHAR(50),  
    id_miembro INT,
    FOREIGN KEY (id_miembro) REFERENCES miembros(id_miembro)
);
GO

-- Crear la tabla admin
CREATE TABLE admin (
    id_admin INT NOT NULL,
    contraseña_admin VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_admin)
);
GO
