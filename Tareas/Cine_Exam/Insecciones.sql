-- Asegurarse de estar en la base de datos correcta
USE cine;
GO

-- 1. Insertar datos en tablas sin dependencias externas directas en este lote
INSERT INTO clientes (
    ID_Cliente, Nombre_Cliente, Ap_Pat_Cliente, Ap_Mat_Cliente, Correo_Cliente,
    Tel_Cliente, Genero_Cliente, Fecha_nac_Cliente, Calle_Cliente, Num_ext_Cliente,
    Colonia_Cliente, CP_Cliente, Alcaldia_Cliente
) VALUES
(1, 'Laura', 'Martínez', 'Gómez', 'laura.mg@gmail.com', '5551234567', 'F', '1990-04-12', 'Morelos', 123, 'Centro', '12345', 'Benito Juárez'),
(2, 'Carlos', 'Ramírez', 'López', 'carlos.rlz@yahoo.com', '5559876543', 'M', '1985-11-23', 'Juárez', 88, 'Del Valle', '03100', 'Coyoacán'),
(3, 'Ana', 'Fernández', 'Ramos', 'ana.fr@hotmail.com', '5566789987', 'F', '1992-06-08', 'Insurgentes', 350, 'Roma Norte', '06700', 'Cuauhtémoc'),
(4, 'Miguel', 'Santos', 'Pérez', 'm.santos@gmail.com', '5543219876', 'M', '1978-02-14', 'Reforma', 220, 'Polanco', '11560', 'Miguel Hidalgo'),
(5, 'Lucía', 'Díaz', 'Vega', 'lucia.dv@gmail.com', '5587654321', 'F', '1995-09-30', 'Tlalpan', 55, 'San Ángel', '01000', 'Álvaro Obregón'),
(6, 'Jorge', 'Herrera', 'Morales', 'jorgehm@gmail.com', '5522334455', 'M', '1988-01-10', 'Xola', 401, 'Narvarte', '03020', 'Benito Juárez'),
(7, 'Paola', 'Mendoza', 'Castro', 'paola.mc@live.com', '5578993344', 'F', '1993-07-25', 'Zapata', 99, 'Portales', '03300', 'Coyoacán'),
(8, 'Luis', 'García', 'Núñez', 'luisgn@hotmail.com', '5599988776', 'M', '1980-05-05', 'Tacuba', 160, 'Condesa', '06140', 'Cuauhtémoc'),
(9, 'Daniela', 'Pérez', 'Soto', 'daniela.ps@gmail.com', '5511223344', 'F', '1996-03-19', 'Chapultepec', 72, 'Bosques', '05120', 'Cuajimalpa'),
(10, 'Ricardo', 'Luna', 'Ortiz', 'ricardo.lo@gmail.com', '5566112233', 'M', '1987-12-01', 'Mixcoac', 210, 'Nápoles', '03810', 'Benito Juárez');
GO

INSERT INTO proveedores (
    ID_Proveedores, Nom_Proveedor, RFC_Proveedor, Correo_Proveedor,
    Tel_Proveedor, Calle_Proveedor, Num_Proveedor, Colonia_Proveedor,
    CP_Proveedor, Alcaldia_Proveedor
) VALUES
(1, 'Distribuciones Ramírez', 'RAMD800101HJ8', 'contacto@ramirez.com', '5555123456', 'Lázaro Cárdenas', 120, 'Industrial Vallejo', '02300', 'Azcapotzalco'),
(2, 'Alimentos del Norte SA', 'ALN920315KX5', 'ventas@alnorte.mx', '5544332211', 'Ignacio Zaragoza', 45, 'Agrícola Oriental', '08500', 'Iztacalco');
GO

INSERT INTO peliculas (
    ID_Peliculas, Titulo_Pelicula, Genero_Peliculas, Clasificacion_Peliculas, Duracion_Peliculas
) VALUES
(1, 'El Origen', 'Ciencia Ficción', 'B', 148),
(2, 'Coco', 'Animación', 'A', 105),
(3, 'Parásitos', 'Drama', 'B15', 132);
GO

-- 2. Insertar datos en tablas que dependen de las anteriores (Sucursales depende de Clientes y Proveedores)
INSERT INTO sucursales (
    ID_Sucursales, Nombre_Sucursal, Calle_Sucursal, Num_Sucursal,
    Colonia_Sucursal, Ciudad_Sucursal, Tel_Sucursal, ID_Cliente, ID_Proveedores
) VALUES
(1, 'Sucursal Centro', 'Juárez', 100, 'Centro', 'CDMX', '5551112233', 1, 1),
(2, 'Sucursal Roma', 'Orizaba', 85, 'Roma Norte', 'CDMX', '5552223344', 2, 2);
GO

-- 3. Insertar datos que dependen de Sucursales y Peliculas (Empleados y Funciones)
INSERT INTO empleados (
    ID_Empleados, Nombre_Empleados, Ap_Pat_Empleados, Ap_Mat_Empleados, Correo_Empleados,
    Tel_Empleados, Genero_Empleados, Fecha_nac_Empleados, Calle_Empleados, Num_Empleados,
    Colonia_Empleados, CP_Empleados, Alcaldia_Empleados, Turno_Empleados, ID_Sucursales
) VALUES
(6, 'Roberto', 'Gómez', 'Serrano', 'roberto.gs@gmail.com', '5533112299', 'M', '1987-05-12', 'Viaducto', 142, 'Doctores', '06720', 'Cuauhtémoc', 'V', 1),
(7, 'Fernanda', 'Reyes', 'Navarro', 'fernanda.rn@gmail.com', '5556677889', 'F', '1994-12-03', 'Ermita', 58, 'Los Reyes', '09830', 'Iztapalapa', 'M', 2),
(3, 'María', 'García', 'Ramos', 'maria.gr@yahoo.com', '5566778899', 'F', '1993-11-22', 'Xola', 90, 'Narvarte', '03020', 'Benito Juárez', 'N', 2),
(4, 'Javier', 'Núñez', 'Luna', 'javier.nl@hotmail.com', '5533445566', 'M', '1980-02-01', 'Zapata', 87, 'Portales', '03300', 'Coyoacán', 'M', 1),
(5, 'Carmen', 'Flores', 'Ortiz', 'carmen.fo@gmail.com', '5577889900', 'F', '1995-07-30', 'Reforma', 212, 'Roma Norte', '06700', 'Cuauhtémoc', 'V', 2);
GO

INSERT INTO funciones (
    ID_Funciones, Fecha_Funciones, Hora_Funcion, Precio_Funciones, ID_Peliculas, ID_Sucursales
) VALUES
(1, '2025-02-09', '16:00:00', 85.00, 1, 2),
(2, '2025-03-09', '19:30:00', 95.00, 2, 1),
(3, '2025-04-01', '15:45:00', 80.00, 1, 2);
GO

-- 4. Insertar datos que dependen de Empleados y Funciones (Ventas)
INSERT INTO ventas (
    ID_Ventas, Fecha_Ventas, Hora_Venta, Total_Venta, ID_Empleados, ID_Funciones
) VALUES
(1, '2025-04-05', '14:30:00', 350.00, 3, 1),
(2, '2025-04-06', '18:45:00', 210.50, 4, 2),
(3, '2025-04-07', '11:15:00', 425.75, 7, 3);
GO

-- 5. Insertar datos que dependen de Clientes y Ventas (Promociones)
INSERT INTO promociones (
    ID_Promociones, Porcentaje_Promocion, Descripcion_Promocion,
    Fecha_inicio_promocion, Fecha_termino_promocion, ID_Cliente, ID_Ventas
) VALUES
(1, 10, 'Descuento del 10% por cliente frecuente', '2025-04-01', '2025-04-15', 1, 2),
(2, 20, 'Promo 20% por referir a un amigo', '2025-04-05', '2025-04-20', 3, 3);
GO