-- Seleccionar la base de datos
USE gimnasio_BD;
GO

-- Insertar datos en la tabla admin
INSERT INTO admin (id_admin, contraseña_admin)
VALUES (1, '123');
GO

-- Insertar registros en la tabla gerente
INSERT INTO gerente (nombre_g, apellido_g, telefono_g, email_g, RFC, contraseña_g)
VALUES 
('Alejandro', 'Morales', '555-0111', 'ale.martinez@example.com', 'RFC0112345678', 'clave123'),
('Beatriz', 'Fernendez', '555-0112', 'maria.garcia@example.com', 'RFC0122345678', 'clave234'),
('Carlos', 'Gonzalez', '555-0113', 'carlos.sanchez@example.com', 'RFC0132345678', 'clave345');
GO

-- Insertar registros en la tabla miembros
INSERT INTO miembros (nombre_m, apellido_m, telefono_m, email_m, fecha_inicio, fecha_venci, membresia, id_gerente)
VALUES 
('Daniel', 'Martinez', '555-0211', 'juan.perez@example.com', '2025-03-01', '2025-09-01', 'Premium', 1),
('Elena', 'Rojas', '555-0212', 'elena.garcia@example.com', '2025-03-05', '2025-09-05', 'Estandar', 2),
('Fernando', 'Hernandez', '555-0213', 'fernando.torres@example.com', '2025-03-10', '2025-09-10', 'B sica', 3),
('Gabriela', 'Diaz', '555-0214', 'gaby.montoya@example.com', '2025-03-15', '2025-09-15', 'Premium', 1),
('Hector', 'Luna', '555-0215', 'leo.sanchez@example.com', '2025-03-20', '2025-09-20', 'Estandar', 2),
('Isabel', 'Mendoza', '555-0216', 'laura.flores@example.com', '2025-03-25', '2025-09-25', 'Basica', 3),
('Javier', 'Silva', '555-0217', 'miguel.hernandez@example.com', '2025-03-30', '2025-09-30', 'Premium', 1);
GO
