USE RENAPO_Familias_4;
GO

------------------------------------------
-- Inserci�n en la tabla Empleados (5 registros)
------------------------------------------
INSERT INTO Empleados (Nombre, ApellidoPaterno, ApellidoMaterno, NumeroEmpleado, Genero, Puesto, Antiguedad, RFC)
VALUES
('Carlos', 'Hernandez', 'Lopez', 1001, 'M', 'Supervisor', 5, 'CARHLO1234567'),
('Mariana', 'Gomez', 'Martinez', 1002, 'F', 'Analista', 3, 'MARGMA2345678'),
('Jose', 'Ramirez', 'Sanchez', 1003, 'M', 'Coordinador', 7, 'JOSRAN3456789'),
('Laura', 'Diaz', 'Perez', 1004, 'F', 'Tecnico', 2, 'LAUDIA4567890'),
('Ricardo', 'Solis', 'Morales', 1005, 'M', 'Director', 10, 'RICSOL5678901');
GO

------------------------------------------
-- Inserci�n en la tabla TrabajadoresSociales (5 registros)
------------------------------------------
INSERT INTO TrabajadoresSociales (Nombre, ApellidoPaterno, ApellidoMaterno, NumeroTrabajadorSocial, Genero, RFC)
VALUES
('Ana', 'Torres', 'Garcia', 2001, 'F', 'ANATOR6789012'),
('Miguel', 'Vega', 'Ramirez', 2002, 'M', 'MIGVEG7890123'),
('Sofia', 'Castillo', 'Lopez', 2003, 'F', 'SOFCAS8901234'),
('Diego', 'Martinez', 'Ortiz', 2004, 'M', 'DIEMAR9012345'),
('Elena', 'Fuentes', 'Ramos', 2005, 'F', 'ELEFUE0123456');
GO

------------------------------------------
-- Inserci�n en la tabla Viviendas (10 registros)
------------------------------------------
INSERT INTO Viviendas (Calle, CP, Municipio, NumeroInt, NumeroExt, Colonia, Estado, Descripcion)
VALUES 
('Calle 1', '01000', 'Ciudad de M�xico', 101, 201, 'Colonia Centro', 'CDMX', 'Casa 1'),
('Calle 2', '01001', 'Ciudad de M�xico', 102, 202, 'Colonia Norte', 'CDMX', 'Casa 2'),
('Calle 3', '01002', 'Ciudad de M�xico', 103, 203, 'Colonia Sur', 'CDMX', 'Casa 3'),
('Calle 4', '01003', 'Ciudad de M�xico', 104, 204, 'Colonia Poniente', 'CDMX', 'Casa 4'),
('Calle 5', '01004', 'Ciudad de M�xico', 105, 205, 'Colonia Oriente', 'CDMX', 'Casa 5'),
('Calle 6', '01005', 'Ciudad de M�xico', 106, 206, 'Colonia Jardines', 'CDMX', 'Casa 6'),
('Calle 7', '01006', 'Ciudad de M�xico', 107, 207, 'Colonia Reforma', 'CDMX', 'Casa 7'),
('Calle 8', '01007', 'Ciudad de M�xico', 108, 208, 'Colonia Independencia', 'CDMX', 'Casa 8'),
('Calle 9', '01008', 'Ciudad de M�xico', 109, 209, 'Colonia Libertad', 'CDMX', 'Casa 9'),
('Calle 10', '01009', 'Ciudad de M�xico', 110, 210, 'Colonia del Valle', 'CDMX', 'Casa 10');
GO

------------------------------------------
-- Inserci�n en la tabla RepresentantesFamilia (10 registros)
------------------------------------------
-- Se asigna de forma c�clica:
-- Para EmpleadoID y TrabajadorSocialID: de 1 a 5 de forma c�clica.
-- Cada representante se relaciona con una vivienda �nica (ViviendaID de 1 a 10).
INSERT INTO RepresentantesFamilia (Nombre, ApellidoPaterno, ApellidoMaterno, EstadoCivil, PuestoLaboral, IngresoMensual, GradoAcademico, EmpleadoID, TrabajadorSocialID, ViviendaID)
VALUES
('Luis',     'Martinez',  'Perez',    'Casado',    'Empleado',      12000.00, 'Licenciatura', 1, 1, 1),
('Carmen',   'Lopez',     'Sanchez',  'Soltera',   'Administrativa', 8500.00,  'Preparatoria', 2, 2, 2),
('Jorge',    'Garcia',    'Ramirez',  'Casado',    'Operario',      9500.00,  'Secundaria',   3, 3, 3),
('Patricia', 'Santos',    'Mendoza',  'Divorciada','Vendedora',     10500.00, 'Licenciatura', 4, 4, 4),
('Fernando', 'Ruiz',      'Gomez',    'Casado',    'Supervisor',    13000.00, 'Maestr�a',     5, 5, 5),
('Isabel',   'Gutierrez', 'Ortiz',    'Soltera',   'Secretaria',    8000.00,  'Preparatoria', 1, 1, 6),
('Eduardo',  'Diaz',      'Lopez',    'Casado',    'T�cnico',       11000.00, 'Licenciatura', 2, 2, 7),
('Veronica', 'Ramirez',   'Soto',     'Viuda',     'Empleado',      9000.00,  'Secundaria',   3, 3, 8),
('Roberto',  'Hernandez', 'Cruz',     'Casado',    'Operario',      9500.00,  'Licenciatura', 4, 4, 9),
('Martha',   'Vazquez',   'Moreno',   'Soltera',   'Administrativa',8700.00,  'Preparatoria', 5, 5, 10);
GO

-----------30 REGISTROS MAS-----------------
INSERT INTO Empleados (Nombre, ApellidoPaterno, ApellidoMaterno, NumeroEmpleado, Genero, Puesto, Antiguedad, RFC) VALUES 
('Juan', 'P�rez', 'G�mez', 1001, 'M', 'Gerente', 10, 'JUAP900101HDF'),
('Mar�a', 'L�pez', 'Hern�ndez', 1002, 'F', 'Administrativo', 5, 'MARL850202MDF'),
('Carlos', 'Mendoza', 'D�az', 1003, 'M', 'Analista', 7, 'CARM920303HDF'),
('Ana', 'Ruiz', 'Vargas', 1004, 'F', 'Contadora', 8, 'ANAR930404HDF'),
('Pedro', 'S�nchez', 'Morales', 1005, 'M', 'Supervisor', 12, 'PEDS940505HDF'),
('Laura', 'Garc�a', 'Torres', 1006, 'F', 'Coordinadora', 6, 'LAUG950606HDF'),
('Luis', 'Fern�ndez', 'Castillo', 1007, 'M', 'T�cnico', 4, 'LUIF960707HDF'),
('Carmen', 'Ram�rez', 'Ortega', 1008, 'F', 'Ejecutiva', 9, 'CARR970808HDF'),
('Miguel', 'Herrera', 'Reyes', 1009, 'M', 'Asistente', 3, 'MIHE980909HDF'),
('Sof�a', 'Dom�nguez', 'Ortiz', 1010, 'F', 'Directora', 15, 'SODO990101HDF'),
('Alejandro', 'Torres', 'R�os', 1011, 'M', 'Jefe de Proyectos', 11, 'ALET900111HDF'),
('Daniela', 'Castillo', 'Ponce', 1012, 'F', 'Dise�adora', 4, 'DANC901212HDF'),
('Roberto', 'Soto', 'Morales', 1013, 'M', 'Consultor', 8, 'ROBS912313HDF'),
('Patricia', 'Mart�nez', 'Cruz', 1014, 'F', 'Especialista', 7, 'PATM923414HDF'),
('Ernesto', 'Jim�nez', 'Lozano', 1015, 'M', 'Ingeniero', 10, 'ERNI934515HDF'),
('Gabriela', 'Navarro', 'Pe�a', 1016, 'F', 'Abogada', 9, 'GABN945616HDF'),
('Fernando', 'Orozco', 'Garc�a', 1017, 'M', 'Operador', 5, 'FERO956717HDF'),
('Isabel', 'Vega', 'Silva', 1018, 'F', 'Secretaria', 6, 'ISAV967818HDF'),
('Sergio', 'Delgado', 'Aguilar', 1019, 'M', 'Coordinador', 7, 'SERD978919HDF'),
('Veronica', 'Sol�s', 'Mendoza', 1020, 'F', 'Analista Senior', 12, 'VERS989020HDF');
GO

INSERT INTO TrabajadoresSociales (Nombre, ApellidoPaterno, ApellidoMaterno, NumeroTrabajadorSocial, Genero, RFC) VALUES 
('Luis', 'Gonz�lez', 'Ram�rez', 2001, 'M', 'LUGO901001HDF'),
('Mar�a', 'Cruz', 'Ortiz', 2002, 'F', 'MACR902002HDF'),
('Jorge', 'Ram�rez', 'Mendoza', 2003, 'M', 'JORG903003HDF'),
('Daniela', 'Hern�ndez', 'Navarro', 2004, 'F', 'DANI904004HDF'),
('Ricardo', 'Torres', 'Ramos', 2005, 'M', 'RICT905005HDF'),
('Sonia', 'Silva', 'P�rez', 2006, 'F', 'SONI906006HDF'),
('Antonio', 'Alvarez', 'Cruz', 2007, 'M', 'ANTO907007HDF'),
('Carla', 'Vargas', 'Ibarra', 2008, 'F', 'CARL908008HDF'),
('Miguel', 'S�nchez', 'Rojas', 2009, 'M', 'MIGU909009HDF'),
('Elena', 'Ram�rez', 'Morales', 2010, 'F', 'ELEN910101HDF'),
('Eduardo', 'L�pez', 'D�az', 2011, 'M', 'EDUA911111HDF'),
('Patricia', 'Mart�nez', 'Fuentes', 2012, 'F', 'PATR912121HDF'),
('Francisco', 'Ortiz', 'Gonz�lez', 2013, 'M', 'FRAN913131HDF'),
('Luisa', 'Garc�a', 'Mendoza', 2014, 'F', 'LUIS914141HDF'),
('Roberto', 'Rojas', 'Fern�ndez', 2015, 'M', 'ROBE915151HDF'),
('Cristina', 'Alvarado', 'Suarez', 2016, 'F', 'CRIS916161HDF'),
('Diego', 'Salinas', 'Moreno', 2017, 'M', 'DIEG917171HDF'),
('Andrea', 'Molina', 'Valdez', 2018, 'F', 'ANDR918181HDF'),
('Manuel', 'Castillo', 'Quiroz', 2019, 'M', 'MANU919191HDF'),
('Sof�a', 'Paredes', 'Cortez', 2020, 'F', 'SOFI920202HDF');
GO

INSERT INTO Viviendas (Calle, CP, Municipio, NumeroInt, NumeroExt, Colonia, Estado, Descripcion) VALUES
('Calle Falsa 1', '01001', 'Municipio A', 101, 10, 'Centro', 'Estado X', 'Vivienda en zona c�ntrica'),
('Avenida Siempre Viva 2', '01002', 'Municipio B', 102, 20, 'Norte', 'Estado Y', 'Construcci�n moderna'),
('Boulevard de los Sue�os 3', '01003', 'Municipio C', 103, 30, 'Sur', 'Estado Z', 'Residencia familiar'),
('Calle del Sol 4', '01004', 'Municipio D', 104, 40, 'Occidental', 'Estado X', 'Vivienda con vista al parque'),
('Avenida Libertad 5', '01005', 'Municipio E', 105, 50, 'Oriental', 'Estado Y', 'Casa con jard�n'),
('Calle Victoria 6', '01006', 'Municipio F', 106, 60, 'Centro', 'Estado Z', 'Residencia con excelente ubicaci�n'),
('Avenida Reforma 7', '01007', 'Municipio G', 107, 70, 'Norte', 'Estado X', 'Casa de dos pisos'),
('Calle Independencia 8', '01008', 'Municipio H', 108, 80, 'Sur', 'Estado Y', 'Vivienda amplia y luminosa'),
('Avenida Constituci�n 9', '01009', 'Municipio I', 109, 90, 'Centro', 'Estado Z', 'Casa con patio interior'),
('Calle de la Amistad 10', '01010', 'Municipio J', 110, 100, 'Norte', 'Estado X', 'Residencia moderna'),
('Boulevard de la Paz 11', '01011', 'Municipio K', 111, 110, 'Sur', 'Estado Y', 'Vivienda en zona tranquila'),
('Calle de la Esperanza 12', '01012', 'Municipio L', 112, 120, 'Centro', 'Estado Z', 'Casa recientemente remodelada'),
('Avenida del Progreso 13', '01013', 'Municipio M', 113, 130, 'Norte', 'Estado X', 'Residencia en desarrollo'),
('Calle Primavera 14', '01014', 'Municipio N', 114, 140, 'Sur', 'Estado Y', 'Casa con dise�o contempor�neo'),
('Avenida Verdad 15', '01015', 'Municipio O', 115, 150, 'Centro', 'Estado Z', 'Vivienda de alta calidad'),
('Calle de los Pinos 16', '01016', 'Municipio P', 116, 160, 'Norte', 'Estado X', 'Casa espaciosa y c�moda'),
('Avenida de los Olivos 17', '01017', 'Municipio Q', 117, 170, 'Sur', 'Estado Y', 'Residencia en zona residencial'),
('Calle del Parque 18', '01018', 'Municipio R', 118, 180, 'Centro', 'Estado Z', 'Casa cercana a parques y escuelas'),
('Avenida de la Reforma 19', '01019', 'Municipio S', 119, 190, 'Norte', 'Estado X', 'Vivienda con acabados modernos'),
('Calle Industrial 20', '01020', 'Municipio T', 120, 200, 'Sur', 'Estado Y', 'Casa en zona industrial adaptada a vivienda');
GO

INSERT INTO RepresentantesFamilia (Nombre, ApellidoPaterno, ApellidoMaterno, EstadoCivil, PuestoLaboral, IngresoMensual, GradoAcademico, EmpleadoID, TrabajadorSocialID, ViviendaID) VALUES 
('Alejandro', 'G�mez', 'Serrano', 'Casado', 'Empleado', 5500.00, 'Licenciatura', 1, 2, 3),
('Beatriz', 'Hern�ndez', 'Luna', 'Soltera', 'Comercial', 4200.00, 'T�cnico', 2, 3, 2),
('Carlos', 'Ram�rez', 'Morales', 'Casado', 'Obrero', 3100.00, 'Preparatoria', 3, 3, 3),
('Diana', 'Torres', 'Vega', 'Divorciada', 'Administradora', 4800.00, 'Licenciatura', 4, 4, 4),
('Eduardo', 'L�pez', 'Cabrera', 'Casado', 'Contador', 6000.00, 'Maestr�a', 5, 5, 5),
('Fernanda', 'Mart�nez', 'Paredes', 'Soltera', 'Directora', 7500.00, 'Doctorado', 6, 6, 6),
('Gabriel', 'Silva', 'Ramos', 'Casado', 'Supervisor', 3900.00, 'Licenciatura', 7, 7, 7),
('Helena', 'Vargas', 'Fuentes', 'Soltera', 'Asesora', 4300.00, 'T�cnico', 8, 8, 8),
('Ignacio', 'Navarro', 'Pe�a', 'Casado', 'Analista', 5200.00, 'Licenciatura', 9, 9, 9),
('Julia', 'Ortiz', 'Cruz', 'Divorciada', 'Coordinadora', 6100.00, 'Licenciatura', 10, 10, 10),
('Kevin', 'D�az', 'Ram�rez', 'Soltero', 'Operador', 3500.00, 'Preparatoria', 11, 11, 11),
('Laura', 'Castillo', 'Salinas', 'Casada', 'Dise�adora', 4700.00, 'Licenciatura', 12, 12, 12),
('Manuel', 'Rojas', 'Medina', 'Casado', 'T�cnico', 3300.00, 'T�cnico', 13, 13, 13),
('Natalia', 'Acosta', 'Ponce', 'Soltera', 'Ejecutiva', 5800.00, 'Maestr�a', 14, 14, 14),
('Oscar', 'Moreno', 'Vargas', 'Casado', 'Jefe', 6700.00, 'Licenciatura', 15, 15, 15),
('Paula', 'Santos', 'R�os', 'Viuda', 'Administradora', 5000.00, 'Licenciatura', 16, 16, 16),
('Quint�n', 'Cruz', 'Molina', 'Soltero', 'Operador', 3600.00, 'Preparatoria', 17, 17, 17),
('Rosa', 'Rubio', 'Garc�a', 'Casada', 'Analista', 5400.00, 'Licenciatura', 18, 18, 18),
('Santiago', 'Del Real', 'Herrera', 'Casado', 'Supervisor', 4600.00, 'T�cnico', 19, 19, 19),
('Teresa', 'M�ndez', 'Fierro', 'Soltera', 'Coordinadora', 6300.00, 'Maestr�a', 20, 20, 20);
GO

----------------------------------------------------------------------------------------------------
INSERT INTO Empleados (Nombre, ApellidoPaterno, ApellidoMaterno, NumeroEmpleado, Genero, Puesto, Antiguedad, RFC)
VALUES
('Luis',   'Mart�nez',   'G�mez',      1011, 'M', 'Analista',        3,  'RFC0000000001'),
('Mar�a',  'Rodr�guez',  'L�pez',      1012, 'F', 'Coordinadora',    5,  'RFC0000000002'),
('Carlos', 'Hern�ndez',  'P�rez',      1013, 'M', 'Asistente',       2,  'RFC0000000003'),
('Ana',    'Garc�a',     'S�nchez',    1014, 'F', 'Recepcionista',   1,  'RFC0000000004'),
('Jos�',   'Flores',     'Ram�rez',    1015, 'M', 'Supervisor',      7,  'RFC0000000005'),
('Laura',  'Torres',     'Morales',    1016, 'F', 'Enlace',          4,  'RFC0000000006'),
('Miguel', 'Vega',       'Castro',     1017, 'M', 'T�cnico',         6,  'RFC0000000007'),
('Elena',  'Ben�tez',    'Rojas',      1018, 'F', 'Auditor',         8,  'RFC0000000008'),
('Ra�l',   'Cruz',       'D�az',       1019, 'M', 'Programador',     2,  'RFC0000000009'),
('Silvia', 'Palacios',   'Ruiz',       1020, 'F', 'Dise�adora',      3,  'RFC0000000010'),
('Pedro',  'Salinas',    'Ortega',     1021, 'M', 'Analista',        5,  'RFC0000000011'),
('Irene',  'Mendoza',    '�lvarez',    1022, 'F', 'Coordinadora',    6,  'RFC0000000012'),
('Daniel', 'Ram�rez',    'Guti�rrez',  1023, 'M', 'Asistente',       1,  'RFC0000000013'),
('Paula',  'Luna',       'Herrera',    1024, 'F', 'Recepcionista',   2,  'RFC0000000014'),
('�scar',  'N��ez',      'Vargas',     1025, 'M', 'Supervisor',      9,  'RFC0000000015'),
('Sandra', 'Pineda',     'Reyes',      1026, 'F', 'Enlace',          4,  'RFC0000000016'),
('Jorge',  'Su�rez',     'M�rquez',    1027, 'M', 'T�cnico',         3,  'RFC0000000017'),
('Paty',   'Bravo',      'Fuentes',    1028, 'F', 'Auditor',         7,  'RFC0000000018'),
('H�ctor', 'Cervantes',  'Lara',       1029, 'M', 'Programador',     2,  'RFC0000000019'),
('Rebeca', 'Santana',    'Murillo',    1030, 'F', 'Dise�adora',      5,  'RFC0000000020');
GO

-- 20 registros para TrabajadoresSociales
INSERT INTO TrabajadoresSociales (Nombre, ApellidoPaterno, ApellidoMaterno, NumeroTrabajadorSocial, Genero, RFC)
VALUES
('Ver�nica', 'Soto',      'Aguirre',    2014, 'F', 'RFC0000001001'),
('Ram�n',    'Guerrero',  'Delgado',    2015, 'M', 'RFC0000001002'),
('Leticia',  'Navarro',   'Casta�eda',  2016, 'F', 'RFC0000001003'),
('Guillermo','Estrada',   'Villarreal', 2017, 'M', 'RFC0000001004'),
('Adriana',  'Padilla',   'Molina',     2018, 'F', 'RFC0000001005'),
('Edgar',    'Flores',    'G�mez',      2019, 'M', 'RFC0000001006'),
('Cecilia',  'Corona',    'Ramos',      2020, 'F', 'RFC0000001007'),
('Armando',  'S�nchez',   'Luna',       2021, 'M', 'RFC0000001008'),
('Monserrat','Herrera',   'Reyes',      2022, 'F', 'RFC0000001009'),
('Iv�n',     'Vega',      'Pacheco',    2023, 'M', 'RFC0000001010'),
('Patricia', 'Rocha',     'Estrada',    2024, 'F', 'RFC0000001011'),
('Bruno',    'Cruz',      'Ledesma',    2025, 'M', 'RFC0000001012'),
('Daniela',  'Palacios',  'Portillo',   2026, 'F', 'RFC0000001013'),
('Ra�l',     'Zamora',    'Ortega',     2027, 'M', 'RFC0000001014'),
('Marisol',  'P�rez',     'Estrada',    2028, 'F', 'RFC0000001015'),
('Fabi�n',   'Guzm�n',    'Cervantes',  2029, 'M', 'RFC0000001016'),
('Regina',   'Vargas',    'M�ndez',     2030, 'F', 'RFC0000001017'),
('Ernesto',  'Soto',      'Ruiz',       2031, 'M', 'RFC0000001018'),
('Claudia',  'Galv�n',    'Serrano',    2032, 'F', 'RFC0000001019'),
('Alberto',  'L�pez',     'Castillo',   2033, 'M', 'RFC0000001020');
GO

-- 20 registros para Viviendas
INSERT INTO Viviendas (Calle, CP, Municipio, NumeroInt, NumeroExt, Colonia, Estado, Descripcion)
VALUES
('Av. Ju�rez',         '06000', 'Ciudad de M�xico', 1,  101, 'Centro',        'CDMX',        'Departamento de 2 rec�maras'),
('Calle Hidalgo',      '44100', 'Guadalajara',      3,  22,  'Centro',        'Jalisco',     'Casa habitaci�n'),
('Av. Insurgentes',    '03100', 'Ciudad de M�xico', 5,  303, 'Roma Norte',    'CDMX',        'Oficina remodelada'),
('Calle 5 de Mayo',    '80000', 'Culiac�n',         NULL, 12, 'Centro',      'Sinaloa',     'Local comercial'),
('Av. Reforma',        '06500', 'Ciudad de M�xico', 2,  204, 'Ju�rez',        'CDMX',        'Departamento nuevo'),
('Calle Allende',      '64000', 'Monterrey',        10, 45,  'Centro',        'Nuevo Le�n',  'Casa antigua'),
('Cam. Real del Molino','83304','Puerto Vallarta',   8,  18,  'Conchas Chinas','Jalisco',   'Casa de vacacionar'),
('Av. Universidad',    '45190', 'Zapopan',          12, 120, 'Vallarta Poniente','Jalisco','Departamento'),
('Calle Hidalgo',      '20000', 'Aguascalientes',   NULL, 33, 'Centro',        'Aguascalientes','Oficina'),
('Av. Morelos',        '76000', 'Toluca',           4,  56,  'Centro',        'M�xico',      'Departamento en renta'),
('Calle Benito Ju�rez','30000', 'Le�n',             6,  78,  'Centro',        'Guanajuato',  'Local comercial'),
('Av. Revoluci�n',     '89300', 'Los Mochis',       2,  14,  'Centro',        'Sinaloa',     'Casa habitaci�n'),
('Calle Hidalgo',      '64010', 'Monterrey',        1,  11,  'Obispado',      'Nuevo Le�n',  'Departamento'),
('Av. 20 de Noviembre','28000', 'Colima',           7,  29,  'Centro',        'Colima',      'Oficina'),
('Calle Zaragoza',     '72000', 'Puebla',           NULL, 5,  'Centro',        'Puebla',      'Local'),
('Av. Tlalpan',        '14000', 'Tlalpan',          9,  99,  'Villa Coyoac�n','CDMX',        'Casa en planta baja'),
('Calle Lerdo',        '29000', 'Tuxtla Guti�rrez', 4,  44,  'Centro',        'Chiapas',     'Departamento'),
('Av. L�pez Mateos',   '78100', 'San Luis Potos�', 10, 102, 'Del Carmen',    'SLP',         'Casa'),
('Calle Belisario Dom�nguez','29010','Tuxtla Guti�rrez',NULL,8,'5 de Mayo',   'Chiapas',     'Oficina'),
('Av. Hidalgo',        '86000', 'Villahermosa',     3,  21,  'Centro',        'Tabasco',     'Departamento');
GO

-- 20 registros para RepresentantesFamilia
INSERT INTO RepresentantesFamilia
  (Nombre, ApellidoPaterno, ApellidoMaterno, EstadoCivil, PuestoLaboral, IngresoMensual, GradoAcademico, EmpleadoID, TrabajadorSocialID, ViviendaID)
VALUES
('Ernesto', 'Ram�rez',    'Navarro',   'Casado',    'Electricista',  12000.00, 'Preparatoria',  12, 14,  11),
('Marisol', 'Garc�a',     'L�pez',     'Soltero',   'Maestra',       8500.00,  'Licenciatura',  13, 15,  12),
('Javier',  'P�rez',      'Soto',      'Divorciado','Mec�nico',      9500.00,  'Secundaria',    14, 16,  13),
('Luc�a',   'Flores',     'G�mez',     'Casado',    'Enfermera',     13000.00, 'Licenciatura',  15, 17,  14),
('�scar',   'Hern�ndez',  'Reyes',     'Viudo',     'Chofer',        7000.00,  'Primaria',      16, 18,  15),
('Patricia','Vega',       'Castro',    'Soltero',   'Contadora',     15000.00, 'Maestr�a',      17, 19,  16),
('Ra�l',    'Ben�tez',    'P�rez',     'Casado',    'Abogado',       18000.00, 'Licenciatura',  18, 20,  17),
('Estela',  'Cruz',       'D�az',      'Divorciado','Cajera',        6000.00,  'Preparatoria',  19, 21,  18),
('Miguel',  'Palacios',   'Ruiz',      'Soltero',   'Ingeniero',     20000.00, 'Maestr�a',      20, 22,  19),
('Ana',     'Salinas',    'Ortega',    'Casado',    'Psic�loga',     14000.00, 'Licenciatura',  21, 23,  20),
('Ricardo', 'Mendoza',    '�lvarez',   'Soltero',   'Arquitecto',    17000.00, 'Maestr�a',      22, 24,  21),
('Sandra',  'Ram�rez',    'Guti�rrez', 'Casado',    'Veterinario',   12500.00, 'Licenciatura',  23, 25,  22),
('Iv�n',    'Luna',       'Herrera',   'Divorciado','Carpintero',    8000.00,  'Primaria',      24, 26,  23),
('Rebeca',  'N��ez',      'Vargas',    'Soltero',   'Programadora',  16000.00, 'Licenciatura',  25, 27,  24),
('Jos�',    'Pineda',     'Reyes',     'Casado',    'M�dico',        22000.00, 'Especialidad',  26, 28,  25),
('Paty',    'Rocha',      'Estrada',   'Viudo',     'Chef',          9000.00,  'Preparatoria',  27, 29,  26),
('H�ctor',  'Guzm�n',     'Cervantes', 'Soltero',   'Piloto',        24000.00, 'Licenciatura',  28, 30,  27),
('Regina',  'Vargas',     'M�ndez',    'Casado',    'Farmac�utica',  13500.00, 'Maestr�a',      29, 31,  28),
('Claudia', 'Soto',       'Ruiz',      'Divorciado','Periodista',    11000.00, 'Licenciatura',  30, 32,  29),
('Alberto', 'Galv�n',     'Serrano',   'Soltero',   'Dise�ador',     14500.00, 'Licenciatura',  31, 33,  30);
GO

USE RENAPO_Familias_4;
GO

INSERT INTO Nuevo_Usuario (Nombre, ApellidoPaterno, ApellidoMaterno, Genero, Edad, RFC)
VALUES
  ('Luc�a',    'Mart�nez',   'S�nchez',   'F', 28, 'RFC2000000001'),
  ('Diego',    'Gonz�lez',   'P�rez',     'M', 35, 'RFC2000000002'),
  ('Valeria',  'Rodr�guez',  'L�pez',     'F', 22, 'RFC2000000003'),
  ('Sof�a',    'Hern�ndez',  'Ram�rez',   'F', 31, 'RFC2000000004'),
  ('Andr�s',   'Garc�a',     'Flores',    'M', 40, 'RFC2000000005'),
  ('Mariana',  'Torres',     'Jim�nez',   'F', 26, 'RFC2000000006'),
  ('Alejandro','Vega',       'Castillo',  'M', 29, 'RFC2000000007'),
  ('Fernanda', 'Delgado',    'Morales',   'F', 34, 'RFC2000000008'),
  ('Jorge',    'Cruz',       'D�az',      'M', 45, 'RFC2000000009'),
  ('Paola',    'Palacios',   'Ruiz',      'F', 24, 'RFC2000000010'),
  ('Ricardo',  'Salinas',    'Espinoza',  'M', 37, 'RFC2000000011'),
  ('Andrea',   'Mendoza',    '�lvarez',   'F', 30, 'RFC2000000012'),
  ('Fernando', 'Ram�rez',    'Guti�rrez', 'M', 32, 'RFC2000000013'),
  ('Natalia',  'Luna',       'Herrera',   'F', 27, 'RFC2000000014'),
  ('Hugo',     'N��ez',      'Vargas',    'M', 41, 'RFC2000000015'),
  ('Paula',    'Pineda',     'Reyes',     'F', 23, 'RFC2000000016'),
  ('�scar',    'Su�rez',     'M�rquez',   'M', 36, 'RFC2000000017'),
  ('M�nica',   'Bravo',      'Fuentes',   'F', 29, 'RFC2000000018'),
  ('Gabriel',  'Cervantes',  'Lara',      'M', 33, 'RFC2000000019'),
  ('Karina',   'Santana',    'Murillo',   'F', 25, 'RFC2000000020');
GO
