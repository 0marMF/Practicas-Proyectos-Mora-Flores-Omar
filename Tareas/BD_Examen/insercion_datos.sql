USE RENAPO_Familias;
GO

-- Inserción en la tabla Empleados (5 registros)
INSERT INTO Empleados (Nombre, ApellidoPaterno, ApellidoMaterno, NumeroEmpleado, Genero, Puesto, Antiguedad, RFC)
VALUES
('Carlos', 'Hernandez', 'Lopez', 1001, 'M', 'Supervisor', 5, 'CARHLO1234567'),
('Mariana', 'Gomez', 'Martinez', 1002, 'F', 'Analista', 3, 'MARGMA2345678'),
('Jose', 'Ramirez', 'Sanchez', 1003, 'M', 'Coordinador', 7, 'JOSRAN3456789'),
('Laura', 'Diaz', 'Perez', 1004, 'F', 'Técnico', 2, 'LAUDIA4567890'),
('Ricardo', 'Solis', 'Morales', 1005, 'M', 'Director', 10, 'RICSOL5678901');
GO

-- Inserción en la tabla TrabajadoresSociales (5 registros)
INSERT INTO TrabajadoresSociales (Nombre, ApellidoPaterno, ApellidoMaterno, NumeroTrabajadorSocial, Genero, RFC)
VALUES
('Ana', 'Torres', 'Garcia', 2001, 'F', 'ANATOR6789012'),
('Miguel', 'Vega', 'Ramirez', 2002, 'M', 'MIGVEG7890123'),
('Sofia', 'Castillo', 'Lopez', 2003, 'F', 'SOFCAS8901234'),
('Diego', 'Martinez', 'Ortiz', 2004, 'M', 'DIEMAR9012345'),
('Elena', 'Fuentes', 'Ramos', 2005, 'F', 'ELEFUE0123456');
GO

-- Inserción en la tabla Viviendas (10 registros)
INSERT INTO Viviendas (Calle, CP, Municipio, NumeroInt, NumeroExt, Colonia, Estado, Descripcion)
VALUES 
('Calle 1', '01000', 'Ciudad de México', 101, 201, 'Colonia Centro', 'CDMX', 'Casa 1'),
('Calle 2', '01001', 'Ciudad de México', 102, 202, 'Colonia Norte', 'CDMX', 'Casa 2'),
('Calle 3', '01002', 'Ciudad de México', 103, 203, 'Colonia Sur', 'CDMX', 'Casa 3'),
('Calle 4', '01003', 'Ciudad de México', 104, 204, 'Colonia Poniente', 'CDMX', 'Casa 4'),
('Calle 5', '01004', 'Ciudad de México', 105, 205, 'Colonia Oriente', 'CDMX', 'Casa 5'),
('Calle 6', '01005', 'Ciudad de México', 106, 206, 'Colonia Jardines', 'CDMX', 'Casa 6'),
('Calle 7', '01006', 'Ciudad de México', 107, 207, 'Colonia Reforma', 'CDMX', 'Casa 7'),
('Calle 8', '01007', 'Ciudad de México', 108, 208, 'Colonia Independencia', 'CDMX', 'Casa 8'),
('Calle 9', '01008', 'Ciudad de México', 109, 209, 'Colonia Libertad', 'CDMX', 'Casa 9'),
('Calle 10', '01009', 'Ciudad de México', 110, 210, 'Colonia del Valle', 'CDMX', 'Casa 10');
GO

-- Inserción en la tabla RepresentantesFamilia (10 registros)
INSERT INTO RepresentantesFamilia (Nombre, ApellidoPaterno, ApellidoMaterno, EstadoCivil, PuestoLaboral, IngresoMensual, GradoAcademico)
VALUES 
('Luis', 'Martinez', 'Perez', 'Casado', 'Empleado', 12000.00, 'Licenciatura'),
('Carmen', 'Lopez', 'Sanchez', 'Soltera', 'Administrativa', 8500.00, 'Preparatoria'),
('Jorge', 'Garcia', 'Ramirez', 'Casado', 'Operario', 9500.00, 'Secundaria'),
('Patricia', 'Santos', 'Mendoza', 'Divorciada', 'Vendedora', 10500.00, 'Licenciatura'),
('Fernando', 'Ruiz', 'Gomez', 'Casado', 'Supervisor', 13000.00, 'Maestría'),
('Isabel', 'Gutierrez', 'Ortiz', 'Soltera', 'Secretaria', 8000.00, 'Preparatoria'),
('Eduardo', 'Diaz', 'Lopez', 'Casado', 'Técnico', 11000.00, 'Licenciatura'),
('Veronica', 'Ramirez', 'Soto', 'Viuda', 'Empleado', 9000.00, 'Secundaria'),
('Roberto', 'Hernandez', 'Cruz', 'Casado', 'Operario', 9500.00, 'Licenciatura'),
('Martha', 'Vazquez', 'Moreno', 'Soltera', 'Administrativa', 8700.00, 'Preparatoria');
GO


-- Inserción en la tabla Familias (10 registros)
-- Se asigna de forma que:
-- Cada registro utiliza un Representante y una Vivienda de forma única (relación 1:1).
-- EmpleadoID y TrabajadorSocialID se asignan de forma cíclica de los 5 disponibles.
-- Se utiliza: EmpleadoID = ((FamiliaIndex - 1) mod 5) + 1 y TrabajadorSocialID = ((FamiliaIndex - 1) mod 5) + 1.
INSERT INTO Familias (RepresentanteID, EmpleadoID, TrabajadorSocialID, ViviendaID)
VALUES 
(1, ((1-1) % 5) + 1, ((1-1) % 5) + 1, 1),
(2, ((2-1) % 5) + 1, ((2-1) % 5) + 1, 2),
(3, ((3-1) % 5) + 1, ((3-1) % 5) + 1, 3),
(4, ((4-1) % 5) + 1, ((4-1) % 5) + 1, 4),
(5, ((5-1) % 5) + 1, ((5-1) % 5) + 1, 5),
(6, ((6-1) % 5) + 1, ((6-1) % 5) + 1, 6),
(7, ((7-1) % 5) + 1, ((7-1) % 5) + 1, 7),
(8, ((8-1) % 5) + 1, ((8-1) % 5) + 1, 8),
(9, ((9-1) % 5) + 1, ((9-1) % 5) + 1, 9),
(10, ((10-1) % 5) + 1, ((10-1) % 5) + 1, 10);
GO