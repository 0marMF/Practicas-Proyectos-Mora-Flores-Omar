-- =============================================
-- INSERCIÓN DE DATOS MÁS REALISTAS (PARTE 1)
-- Script para SQL Server (T-SQL) - Basado en el nuevo schema
-- PRE-REQUISITO: Tablas vacías e IDENTITY reiniciado a 0.
-- =============================================
USE CineDB;
GO

-- =============================================
-- 1. Insertar Clientes (~35 Registros)
-- =============================================
PRINT 'Insertando Clientes...';
INSERT INTO Cliente (Nombre, Apellido_Paterno, Apellido_Materno, Email, Telefono, Genero, Edad, Direccion) VALUES
(N'Ana', N'García', N'López', N'ana.garcia@email.com', N'5512345678', N'M', 28, N'Calle Falsa 123, Colonia Centro, CDMX'),
(N'Luis', N'Martínez', N'Rodríguez', N'luis.martinez@email.com', N'5587654321', N'H', 35, N'Avenida Siempre Viva 742, Springfield'),
(N'Sofía', N'Hernández', N'Gómez', N'sofia.hernandez@email.com', N'5555555555', N'M', 22, N'Boulevard de los Sueños Rotos 1, Del Valle'),
(N'Carlos', N'Pérez', N'Sánchez', N'carlos.perez@email.com', N'5511112222', N'H', 45, N'Plaza Central 5, Coyoacán'),
(N'María', N'Rodríguez', N'Fernández', N'maria.rodriguez.f@email.com', N'5533334444', N'M', 19, N'Calle Luna 8, Condesa'),
(N'José', N'González', N'Díaz', N'jose.gonzalez.d@email.com', N'5566667777', N'H', 52, N'Avenida Sol 21, Polanco'),
(N'Laura', N'López', N'Martínez', N'laura.lopez.m@email.com', N'5588889999', N'M', 31, N'Paseo de la Reforma 100, Juárez'),
(N'Javier', N'Sánchez', N'Pérez', N'javier.sanchez.p@email.com', N'5510101010', N'H', 25, N'Calle Norte 45, Industrial Vallejo'),
(N'Fernanda', N'Gómez', N'Hernández', N'fernanda.gomez.h@email.com', N'5520202020', N'M', 40, N'Avenida Sur 67, Pedregal'),
(N'Ricardo', N'Díaz', N'González', N'ricardo.diaz.g@email.com', N'5540404040', N'H', 29, N'Calle Este 89, Santa Fe'),
(N'Valeria', N'Torres', N'Ramírez', N'valeria.torres@email.com', N'5570707070', N'M', 21, N'Camino Real 3, Lomas'),
(N'Diego', N'Ramírez', N'Flores', N'diego.ramirez.f@email.com', N'5512121212', N'H', 36, N'Calle Roble 50, Narvarte'),
(N'Camila', N'Flores', N'Vázquez', N'camila.flores@email.com', N'5534343434', N'M', 27, N'Avenida Insurgentes Sur 1500, Mixcoac'),
(N'Andrés', N'Vázquez', N'Rojas', N'andres.vazquez@email.com', N'5567676767', N'H', 42, N'Calle Olivo 99, Roma Norte'),
(N'Isabella', N'Rojas', N'Mora', N'isabella.rojas@email.com', N'5590909090', N'M', 20, N'Avenida Universidad 800, Letrán Valle'),
(N'Mateo', N'Mora', N'Soto', N'mateo.mora@email.com', N'5521212121', N'H', 50, N'Calle Pino 30, Nápoles'),
(N'Ximena', N'Soto', N'Jiménez', N'ximena.soto@email.com', N'5543434343', N'M', 34, N'Avenida Revolución 500, Escandón'),
(N'Daniel', N'Jiménez', N'Castro', N'daniel.jimenez.c@email.com', N'5576767676', N'H', 26, N'Calle Cedro 15, San Ángel'),
(N'Regina', N'Castro', N'Ortiz', N'regina.castro@email.com', N'5509090909', N'M', 47, N'Avenida Patriotismo 200, San Pedro de los Pinos'),
(N'Santiago', N'Ortiz', N'Álvarez', N'santiago.ortiz.a@email.com', N'5513131313', N'H', 39, N'Calle Fresno 75, Del Carmen'),
(N'Renata', N'Álvarez', N'Moreno', N'renata.alvarez.m@email.com', N'5545454545', N'M', 23, N'Avenida División del Norte 1200, Portales'),
(N'Sebastián', N'Moreno', N'Ruiz', N'sebastian.moreno.r@email.com', N'5578787878', N'H', 53, N'Calle Sauce 22, Florida'),
(N'Valentina', N'Ruiz', N'Herrera', N'valentina.ruiz.h@email.com', N'5518181818', N'M', 30, N'Avenida Miguel Ángel de Quevedo 50, Chimalistac'),
(N'Emiliano', N'Herrera', N'Medina', N'emiliano.herrera.m@email.com', N'5551515151', N'H', 29, N'Calle Álamo 60, Guadalupe Inn'),
(N'Mariana', N'Medina', N'Aguilar', N'mariana.medina.a@email.com', N'5584848484', N'M', 44, N'Avenida Toluca 400, Olivar de los Padres'),
(N'Leonardo', N'Aguilar', N'Cruz', N'leonardo.aguilar.c@email.com', N'5527272727', N'H', 59, N'Calle Encino 11, Tizapán'),
(N'Victoria', N'Cruz', N'Silva', N'victoria.cruz.s@email.com', N'5560606060', N'M', 24, N'Avenida Contreras 300, San Jerónimo Lídice'),
(N'Nicolás', N'Silva', N'Guerrero', N'nicolas.silva.g@email.com', N'5593939393', N'H', 37, N'Calle Abeto 40, Jardines del Pedregal'),
(N'Paula', N'Guerrero', N'Reyes', N'paula.guerrero.r@email.com', N'5536363636', N'M', 41, N'Avenida San Fernando 1, Toriello Guerra'),
(N'Samuel', N'Reyes', N'Mendoza', N'samuel.reyes.m@email.com', N'5579797979', N'H', 28, N'Calle Ciprés 9, Tlalpan Centro'),
(N'Elena', N'Mendoza', N'Castillo', N'elena.mendoza.c@email.com', N'5515151515', N'M', 50, NULL), -- Dirección NULL
(N'Miguel', N'Castillo', N'Santos', N'miguel.castillo.s@email.com', NULL, N'H', 33, N'Paseo del Pedregal 800, Jardines de la Montaña'), -- Teléfono NULL
(N'Abril', N'Santos', N'León', N'abril.santos.l@email.com', N'5548484848', NULL, 26, N'Anillo Periférico Sur 5550, Isidro Fabela'), -- Género NULL
(N'David', N'León', N'Juárez', N'david.leon.j@email.com', N'5581818181', N'H', NULL, N'Carretera Picacho Ajusco 100, Héroes de Padierna'), -- Edad NULL
(N'Julieta', N'Juárez', N'Ortega', N'julieta.juarez.o@email.com', N'5524242424', N'M', 32, N'Insurgentes Sur 3000, Villa Olímpica');
GO

-- ==============================================
-- 2. Insertar Películas (~35 Registros)
-- ==============================================
PRINT 'Insertando Peliculas...';
INSERT INTO Pelicula (Titulo, Director, Genero, Clasificacion, Duracion_Minutos, Sinopsis, Año_Estreno, Idioma_Original) VALUES
(N'El Laberinto del Tiempo', N'Guillermo del Toro', N'Fantasía Oscura', N'B15', 135, N'Una joven descubre un portal a través del tiempo en un antiguo reloj.', 2024, N'Español'),
(N'Misión Rescate: Luna Roja', N'Alfonso Cuarón', N'Ciencia Ficción', N'B', 142, N'Un equipo de astronautas debe sobrevivir en Marte tras una tormenta solar.', 2023, N'Inglés'),
(N'Amores Perros 2: Destinos Cruzados', N'Alejandro G. Iñárritu', N'Drama', N'C', 155, N'Nuevas historias se entrelazan trágicamente en la Ciudad de México.', 2025, N'Español'),
(N'Spider-Man: Más Allá del Multiverso', N'Joaquim Dos Santos', N'Animación/Superhéroes', N'A', 130, N'Miles Morales enfrenta una nueva amenaza interdimensional.', 2024, N'Inglés'),
(N'La Leyenda del Charro Negro Regresa', N'Alberto Rodríguez', N'Animación/Terror', N'AA', 95, N'Leo San Juan y sus amigos enfrentan al Charro Negro una vez más.', 2023, N'Español'),
(N'Medianoche en París Eterno', N'Woody Allen', N'Comedia Romántica', N'B', 105, N'Un escritor viaja al pasado parisino, pero esta vez no puede volver.', 2022, N'Inglés'),
(N'El Guardián Silencioso', N'Denis Villeneuve', N'Thriller/Acción', N'B15', 128, N'Un ex-agente debe proteger a una testigo clave sin decir una palabra.', 2024, N'Inglés'),
(N'Coco: El Reencuentro Familiar', N'Lee Unkrich', N'Animación/Musical', N'AA', 100, N'Miguel regresa a la Tierra de los Muertos para una nueva celebración.', 2025, N'Español'),
(N'Duna: Parte Tres - El Mesías', N'Denis Villeneuve', N'Ciencia Ficción', N'B15', 160, N'La ascensión de Paul Atreides y las consecuencias de su jihad.', 2026, N'Inglés'),
(N'El Comediante Triste', N'Todd Phillips', N'Drama/Comedia Negra', N'C', 125, N'La vida de un comediante fracasado toma un giro oscuro.', 2023, N'Inglés'),
(N'Rápidos y Furiosos 11: La Última Carrera', N'Justin Lin', N'Acción', N'B', 140, N'Dom Toretto enfrenta a su némesis final en una carrera global.', 2025, N'Inglés'),
(N'Un Lugar en Silencio: Orígenes', N'John Krasinski', N'Terror/Ciencia Ficción', N'B15', 110, N'Descubre cómo llegaron las criaturas sensibles al sonido.', 2024, N'Inglés'),
(N'La Forma del Agua: El Legado', N'Guillermo del Toro', N'Fantasía/Romance', N'B15', 130, N'La criatura anfibia regresa buscando a su descendencia.', 2026, N'Inglés'),
(N'Roma: Años Después', N'Alfonso Cuarón', N'Drama', N'B', 140, N'Cleo y la familia enfrentan nuevos desafíos en los años 80.', 2024, N'Español'),
(N'El Renacido: La Venganza del Hijo', N'Alejandro G. Iñárritu', N'Aventura/Drama', N'C', 165, N'El hijo de Hugh Glass busca justicia años después.', 2025, N'Inglés'),
(N'IntensaMente 2: Nuevas Emociones', N'Pete Docter', N'Animación/Comedia', N'AA', 105, N'Riley es adolescente y nuevas emociones llegan a la central.', 2024, N'Inglés'),
(N'Sicario: Tierra de Nadie', N'Taylor Sheridan', N'Crimen/Thriller', N'C', 120, N'La guerra contra los cárteles se intensifica en la frontera.', 2023, N'Inglés'),
(N'Babel Revisitado', N'Alejandro G. Iñárritu', N'Drama', N'C', 150, N'Un evento global conecta nuevas historias de incomprensión.', 2026, N'Multilingüe'),
(N'El Secreto de sus Ojos: El Caso Reabierto', N'Juan José Campanella', N'Suspenso/Drama', N'B15', 130, N'Benjamín Espósito investiga un nuevo ángulo del caso Morales.', 2024, N'Español'),
(N'Mad Max: El Camino de la Esperanza', N'George Miller', N'Acción/Ciencia Ficción', N'C', 125, N'Max ayuda a una nueva comunidad a escapar de un tirano del páramo.', 2025, N'Inglés'),
(N'Parásitos: El Sótano', N'Bong Joon-ho', N'Suspenso/Comedia Negra', N'C', 135, N'Una precuela que explora la vida del hombre en el búnker.', 2024, N'Coreano'),
(N'Forrest Gump: La Vida Continúa', N'Robert Zemeckis', N'Comedia/Drama', N'B', 145, N'Forrest Jr. vive sus propias aventuras a través de la historia reciente.', 2023, N'Inglés'),
(N'Toy Story 5: Adiós, Vaquero?', N'Josh Cooley', N'Animación/Aventura', N'AA', 100, N'Woody y Buzz enfrentan la posibilidad de separarse para siempre.', 2025, N'Inglés'),
(N'El Padrino: Legado Siciliano', N'Francis Ford Coppola', N'Crimen/Drama', N'C', 170, N'Explora las raíces de la familia Corleone en Sicilia.', 2024, N'Inglés/Italiano'),
(N'John Wick: Capítulo 5 - Excommunicado Global', N'Chad Stahelski', N'Acción/Thriller', N'C', 130, N'John Wick es perseguido por asesinos en todos los continentes.', 2024, N'Inglés'),
(N'Ciudad de Dios: La Nueva Generación', N'Fernando Meirelles', N'Crimen/Drama', N'D', 135, N'Una nueva generación lucha por sobrevivir en las favelas de Río.', 2025, N'Portugués'),
(N'Kill Bill: Volumen 3 - La Hija de la Novia', N'Quentin Tarantino', N'Acción/Crimen', N'D', 150, N'La hija de Vernita Green busca venganza contra Beatrix Kiddo.', 2026, N'Inglés'),
(N'Los Increíbles 3: Jack-Jack al Ataque', N'Brad Bird', N'Animación/Superhéroes', N'AA', 115, N'La familia Parr debe controlar los poderes caóticos de Jack-Jack.', 2025, N'Inglés'),
(N'Harry Potter y el Legado Olvidado', N'David Yates', N'Fantasía/Aventura', N'B', 150, N'Albus Potter descubre un secreto oscuro sobre los fundadores de Hogwarts.', 2026, N'Inglés'),
(N'Whiplash: El Duelo Final', N'Damien Chazelle', N'Drama/Música', N'B15', 120, N'Andrew Neiman y Terence Fletcher se reencuentran en una competencia definitiva.', 2024, N'Inglés'),
(N'La La Land: Sueños Rotos', N'Damien Chazelle', N'Musical/Drama', N'B', 130, N'Mia y Sebastian se cruzan de nuevo, años después de seguir caminos separados.', 2025, N'Inglés'),
(N'Amelie: El Regreso a Montmartre', N'Jean-Pierre Jeunet', N'Comedia/Romance', N'A', 110, N'Amelie Poulain encuentra nuevas formas de llevar alegría a París.', 2023, N'Francés'),
(N'Gladiador II: El Hijo del César', N'Ridley Scott', N'Acción/Drama Histórico', N'C', 160, N'Lucius, sobrino de Cómodo, busca vengar a Máximo.', 2024, N'Inglés'),
(N'El Señor de los Anillos: La Sombra del Este', N'Peter Jackson', N'Fantasía/Aventura', N'B15', 180, N'Aragorn enfrenta una nueva amenaza que surge en las tierras orientales.', 2026, N'Inglés'),
(N'Avatar 3: El Portador de Semillas', N'James Cameron', N'Ciencia Ficción/Aventura', N'B', 190, N'Jake Sully explora nuevas regiones submarinas y volcánicas de Pandora.', 2025, N'Inglés');
GO

-- ===============================================
-- 3. Insertar Promociones (~15 Registros)
-- ===============================================
PRINT 'Insertando Promociones...';
INSERT INTO Promocion (Nombre_Promocion, Descripcion, Tipo_Descuento, Valor_Descuento, Fecha_Inicio_Vigencia, Fecha_Fin_Vigencia, Condiciones, Activa) VALUES
(N'Miércoles 2x1 Clásico', N'Compra un boleto y llévate otro gratis los miércoles en funciones 2D.', N'Cantidad', 2, '2025-01-01', '2025-12-31', N'No aplica en salas VIP, 3D, IMAX, 4DX. No acumulable.', 1),
(N'Combo Enamórate', N'2 boletos + 1 palomitas grandes + 2 refrescos grandes por precio especial.', N'Precio Especial', 250.00, '2025-02-01', '2025-02-28', N'Precio final del paquete $250. Válido en Febrero.', 1),
(N'Credencial Estudiante', N'15% de descuento en tu boleto presentando credencial vigente.', N'Porcentaje', 15.00, '2025-01-15', '2025-12-15', N'Válido de Lunes a Viernes antes de las 6 PM. No aplica en días festivos.', 1),
(N'Jueves de Estreno', N'10% de descuento en funciones del día de estreno (Jueves).', N'Porcentaje', 10.00, '2025-01-01', '2025-12-31', N'Aplica solo el Jueves del estreno oficial. No acumulable.', 1),
(N'Club Cine Oro', N'20% de descuento en boletos y 10% en dulcería para miembros Oro.', N'Mixto', NULL, '2025-03-01', '2026-02-28', N'Requiere membresía Oro activa. Descuentos aplicados al pagar.', 1),
(N'Matinee Infantil', N'Boleto a $45 para niños (menores de 12) antes de las 13:00 Sab y Dom.', N'Precio Especial', 45.00, '2025-01-01', '2025-12-31', N'Aplica solo a boletos de niño. Presentar identificación si se solicita.', 1),
(N'Paquete Familiar', N'4 boletos + 1 palomitas grandes + 4 refrescos chicos por precio especial.', N'Precio Especial', 380.00, '2025-05-01', '2025-08-31', N'Precio final $380. Válido todos los días durante vigencia.', 1),
(N'Acumula Visitas Fan', N'Registra 5 visitas y obtén un cupón de 50% para tu próxima compra.', N'Puntos', 5, '2025-01-01', '2025-12-31', N'Requiere registro en programa de lealtad. Cupón válido por 30 días.', 1),
(N'Adulto Mayor (INAPAM)', N'25% de descuento en boleto presentando credencial INAPAM.', N'Porcentaje', 25.00, '2025-01-01', '2025-12-31', N'Válido todos los días. Un boleto por credencial.', 1),
(N'Domingo Palomero', N'Refill gratis en Palomitas Grandes Mantequilla.', N'Refill Gratis', NULL, '2025-01-01', '2025-12-31', N'Válido solo los domingos presentando ticket de compra del mismo día.', 1),
(N'Preventa Exclusiva App', N'Acceso anticipado a compra de boletos para estrenos importantes vía App.', N'Acceso Anticipado', NULL, '2025-01-01', '2025-12-31', N'Requiere tener la app y cuenta activa.', 1),
(N'Lunes Godín', N'Boleto + Combo Individual por $120.', N'Precio Especial', 120.00, '2025-01-01', '2025-12-31', N'Válido Lunes de 4 PM a 7 PM. No aplica festivos.', 1),
(N'Martes de Combo Mediano', N'Compra cualquier combo y llévate el refresco y palomitas tamaño mediano.', N'Upgrade Gratis', NULL, '2025-01-01', '2025-12-31', N'Válido solo los Martes.', 1),
(N'Maestro con Credencial', N'Precio de estudiante presentando credencial de maestro vigente.', N'Equivalente', NULL, '2025-01-15', '2025-12-15', N'Aplican mismas condiciones que promo Estudiante.', 1),
(N'Verano Refrescante', N'Compra 2 refrescos grandes y llévate el tercero gratis.', N'Cantidad', 3, '2025-06-01', '2025-08-31', N'Aplica solo en refrescos grandes de fuente.', 0); -- Promo inactiva
GO

-- =============================================
-- 4. Insertar Productos (~20 Registros)
-- =============================================
PRINT 'Insertando Productos...';
INSERT INTO Producto (Nombre, Descripcion, Precio_Venta, Categoria, Activo) VALUES
(N'Palomitas Mantequilla Chicas', N'Porción individual de palomitas de maíz recién hechas con mantequilla.', 40.00, N'Alimentos', 1),
(N'Palomitas Mantequilla Medianas', N'Porción para compartir de palomitas de maíz con mantequilla.', 50.00, N'Alimentos', 1),
(N'Palomitas Mantequilla Grandes', N'Porción familiar de palomitas de maíz con mantequilla, ideal para varios.', 60.00, N'Alimentos', 1),
(N'Palomitas Caramelo Chicas', N'Palomitas cubiertas con caramelo crujiente, tamaño individual.', 45.00, N'Alimentos', 1),
(N'Palomitas Caramelo Grandes', N'Palomitas cubiertas con caramelo crujiente, tamaño grande.', 65.00, N'Alimentos', 1),
(N'Palomitas Mixtas Grandes', N'Combinación de palomitas de mantequilla y caramelo, tamaño grande.', 70.00, N'Alimentos', 1),
(N'Refresco de Fuente Chico', N'Vaso de 600ml de tu refresco favorito (Coca-Cola, Fanta, Sprite...).', 35.00, N'Bebidas', 1),
(N'Refresco de Fuente Mediano', N'Vaso de 800ml de tu refresco favorito.', 42.00, N'Bebidas', 1),
(N'Refresco de Fuente Grande', N'Vaso de 1L de tu refresco favorito.', 50.00, N'Bebidas', 1),
(N'Agua Embotellada Ciel 600ml', N'Agua purificada natural.', 28.00, N'Bebidas', 1),
(N'Agua Embotellada Ciel 1L', N'Agua purificada natural.', 35.00, N'Bebidas', 1),
(N'Jugo del Valle Naranja', N'Jugo de naranja pasteurizado.', 30.00, N'Bebidas', 1),
(N'Nachos con Queso', N'Totopos de maíz bañados en queso cheddar tibio.', 55.00, N'Alimentos', 1),
(N'Nachos con Queso y Jalapeños', N'Nachos con queso y rodajas de chile jalapeño.', 60.00, N'Alimentos', 1),
(N'Nachos Supremos', N'Nachos con queso, chili con carne, jalapeños y crema.', 75.00, N'Alimentos', 1),
(N'Hot Dog Clásico', N'Salchicha de pavo en pan suave con catsup y mostaza.', 45.00, N'Alimentos', 1),
(N'Hot Dog Jumbo Especial', N'Salchicha jumbo de res, pan artesanal, cebolla caramelizada.', 65.00, N'Alimentos', 1),
(N'Crepa de Nutella y Plátano', N'Crepa caliente rellena de Nutella y rodajas de plátano fresco.', 55.00, N'Alimentos', 1),
(N'Combo Individual Clásico', N'1 Palomitas Medianas Mantequilla + 1 Refresco Mediano.', 85.00, N'Combos', 1),
(N'Combo Nacho Amigo', N'1 Nachos con Queso + 1 Refresco Grande.', 95.00, N'Combos', 1),
(N'M&Ms Cacahuate', N'Chocolate con leche y cacahuate en cubierta de caramelo.', 25.00, N'Dulces', 1),
(N'Skittles Sour', N'Caramelos masticables ácidos sabores frutales.', 25.00, N'Dulces', 1);
GO

-- ================================================================
-- 5. Insertar Sucursales (~10 Registros)
-- (Se inserta con Gerente_ID NULL inicialmente)
-- ================================================================
PRINT 'Insertando Sucursales...';
INSERT INTO Sucursal (Nombre, Direccion, Ciudad, Estado, Codigo_Postal, Telefono, Numero_Salas, Gerente_ID) VALUES
(N'Cinépolis Plaza Satélite', N'Circuito Centro Comercial 2251, Cd. Satélite', N'Naucalpan de Juárez', N'Estado de México', N'53100', N'5553740011', 16, NULL),
(N'Cinemex Antara Polanco', N'Av. Ejército Nacional Mexicano 843-B, Granada', N'Miguel Hidalgo', N'CDMX', N'11520', N'5552801122', 14, NULL),
(N'Cine Tonalá Roma Norte', N'Tonalá 261, Roma Sur', N'Cuauhtémoc', N'CDMX', N'06760', N'5555840033', 2, NULL), -- Ajustado nombre y salas
(N'Cinépolis Oasis Coyoacán', N'Av. Miguel Ángel de Quevedo 227, Oxtopulco Universidad', N'Coyoacán', N'CDMX', N'04310', N'5575834455', 10, NULL), -- Ajustado número de salas
(N'Cinemex Parque Tezontle', N'Av. Canal de Tezontle 1512, Alfonso Ortiz Tirado', N'Iztapalapa', N'CDMX', N'09020', N'5556407788', 18, NULL),
(N'Cinépolis Perisur', N'Anillo Periférico Sur 4690, Jardines del Pedregal', N'Coyoacán', N'CDMX', N'04500', N'5554246699', 15, NULL),
(N'Cine LIDO Condesa', N'Tamaulipas 202, Hipódromo Condesa', N'Cuauhtémoc', N'CDMX', N'06100', N'5552110077', 1, NULL), -- Ajustado nombre y salas
(N'Cinemex Universidad', N'Av. Universidad 740, Sta Cruz Atoyac', N'Benito Juárez', N'CDMX', N'03310', N'5556018811', 12, NULL), -- Ajustado nombre y salas
(N'Cinépolis Town Center El Rosario', N'Av. El Rosario 1025, Tierra Nueva', N'Azcapotzalco', N'CDMX', N'02430', N'5553189922', 14, NULL),
(N'Autocinema Coyote Polanco', N'Lago Zurich 200, Granada', N'Miguel Hidalgo', N'CDMX', N'11529', N'5512345000', 1, NULL); -- Ajustado nombre
GO

-- ==========================================
-- 6. Insertar Empleados (~35 Registros)
-- (Asignar Sucursal_ID de 1 a 10)
-- (Asegurar 10 Gerentes, uno por sucursal)
-- (RFC/NSS deben ser únicos si no son NULL)
-- ==========================================
PRINT 'Insertando Empleados...';
INSERT INTO Empleado (Nombre, Apellido_Paterno, Apellido_Materno, Genero, Edad, RFC, NSS, Puesto, Fecha_Contratacion, Salario, Email_Corporativo, Telefono_Corporativo, Sucursal_ID) VALUES
-- Gerentes (Empleado_ID 1 a 10 asignados a Sucursal_ID 1 a 10) - RFC/NSS 13/11 chars
(N'Roberto', N'Jiménez', N'Cruz', N'H', 42, N'JICR820301ABC', N'11223344550', N'Gerente', '2018-05-15', 28000.00, N'roberto.jimenez@cinecorp.mx', N'5510000001', 1),
(N'Elena', N'Vázquez', N'Morales', N'M', 38, N'VAME860712DEF', N'22334455661', N'Gerente', '2019-02-20', 29500.00, N'elena.vazquez@cinecorp.mx', N'5510000002', 2),
(N'Miguel', N'Flores', N'Reyes', N'H', 45, N'FORM791105GHI', N'33445566772', N'Gerente', '2017-10-01', 26500.00, N'miguel.flores@cinecorp.mx', N'5510000003', 3),
(N'Isabel', N'Cordero', N'Marín', N'M', 41, N'COMI830410HIJ', N'45645645611', N'Gerente', '2020-02-28', 28500.00, N'isabel.cordero@cinecorp.mx', N'5510000004', 4),
(N'Oscar', N'Pacheco', N'Vega', N'H', 33, N'PAVO910725EFG', N'12312312310', N'Gerente', '2021-01-15', 31000.00, N'oscar.pacheco@cinecorp.mx', N'5510000005', 5),
(N'Gabriela', N'López', N'Soto', N'M', 39, N'LOSG850814JKL', N'56756756712', N'Gerente', '2019-06-10', 29000.00, N'gabriela.lopez@cinecorp.mx', N'5510000006', 6),
(N'Fernando', N'Martínez', N'Luna', N'H', 46, N'MALF780120MNO', N'67867867813', N'Gerente', '2018-08-01', 25000.00, N'fernando.martinez@cinecorp.mx', N'5510000007', 7),
(N'Valeria', N'Silva', N'Ortega', N'M', 36, N'SIOV880505PQR', N'78978978914', N'Gerente', '2021-11-25', 27500.00, N'valeria.silva@cinecorp.mx', N'5510000008', 8),
(N'Jorge', N'Reyes', N'Campos', N'H', 40, N'RECJ840911STU', N'89089089015', N'Gerente', '2020-07-18', 28200.00, N'jorge.reyes@cinecorp.mx', N'5510000009', 9),
(N'Adriana', N'Guerrero', N'Paz', N'M', 35, N'GUPA891201VWX', N'90190190116', N'Gerente', '2019-09-05', 24000.00, N'adriana.guerrero@cinecorp.mx', N'5510000010', 10),
-- Personal Adicional (25 empleados) - Asignando valores únicos donde antes era NULL
(N'Patricia', N'Ramírez', N'Silva', N'M', 29, N'RASP950120XYZ', N'44556677883', N'Taquillero', '2022-08-01', 8500.00, N'patricia.ramirez@cinecorp.mx', N'5520000001', 1),
(N'David', N'Mendoza', N'Ortiz', N'H', 24, N'MEOD000415AB1', N'55667788994', N'Dulcero', '2023-01-10', 8000.00, N'david.mendoza@cinecorp.mx', N'5520000002', 1),
(N'Brenda', N'Ortega', N'Soto', N'M', 22, N'ORSB020818CD2', N'88990011227', N'Taquillero', '2023-05-01', 8500.00, N'brenda.ortega@cinecorp.mx', N'5520000005', 3),
(N'Sergio', N'Ríos', N'Navarro', N'H', 35, N'RINS890214EF3', N'99001122338', N'Mantenimiento', '2019-09-01', 10000.00, N'sergio.rios@cinecorp.mx', N'5520000006', 4),
(N'Diana', N'Salazar', N'Campos', N'M', 26, N'SACD981205GH4', N'00112233449', N'Dulcero', '2022-03-20', 8000.00, N'diana.salazar@cinecorp.mx', N'5520000007', 5),
(N'Javier', N'Castro', N'Luna', N'H', 31, N'CALJ930303IJ5', N'77889900116', N'Supervisor de Sala', '2020-06-15', 16000.00, N'javier.castro@cinecorp.mx', N'5520000004', 2),
(N'Luisa', N'Fernández', N'Peña', N'M', 27, N'FEPL970909KL6', N'66778899005', N'Proyeccionista', '2021-11-05', 13000.00, N'luisa.fernandez@cinecorp.mx', N'5520000003', 2),
(N'Mario', N'González', N'Mares', N'H', 23, NULL, N'11122233344', N'Taquillero', '2024-01-15', 8500.00, N'mario.gonzalez@cinecorp.mx', N'5520000011', 6), -- UNICO RFC NULL
(N'Carolina', N'Herrera', N'Solis', N'M', 25, N'HESC990510MN7', NULL, N'Dulcero', '2023-07-01', 8000.00, N'carolina.herrera@cinecorp.mx', N'5520000012', 6), -- UNICO NSS NULL
(N'Pedro', N'Aguilar', N'Vega', N'H', 28, N'AGVP960220OP8', N'22233344455', N'Taquillero', '2022-04-10', 8600.00, N'pedro.aguilar@cinecorp.mx', N'5520000013', 8),
(N'Sofia', N'Torres', N'Ríos', N'M', 21, N'TORS031105QR9', N'33344455566', N'Dulcero', '2024-02-01', 8100.00, N'sofia.torres@cinecorp.mx', N'5520000014', 8),
(N'Raúl', N'Ramírez', N'Guillen', N'H', 36, N'RAGR880615ST0', N'44455566677', N'Supervisor Dulcería', '2019-12-01', 15500.00, N'raul.ramirez@cinecorp.mx', N'5520000015', 9),
(N'Andrea', N'Flores', N'Camacho', N'M', 29, N'FOCA950822UV1', N'55566677788', N'Taquillero', '2021-05-20', 8700.00, N'andrea.flores@cinecorp.mx', N'5520000016', 9),
(N'Esteban', N'Vázquez', N'Lara', N'H', 26, N'VALE980110WX2', N'66677788899', N'Proyeccionista', '2023-03-15', 13200.00, N'esteban.vazquez@cinecorp.mx', N'5520000017', 10),
(N'Natalia', N'Rojas', N'Salas', N'M', 24, N'ROSAN99010100', N'10101010101', N'Dulcero', '2023-10-01', 8000.00, N'natalia.rojas@cinecorp.mx', N'5520000018', 10), -- Valor Asignado
(N'Gustavo', N'Mora', N'Benítez', N'H', 30, N'MOBG940405YZ3', N'77788899900', N'Taquillero', '2022-09-10', 8500.00, N'gustavo.mora@cinecorp.mx', N'5520000019', 1),
(N'Jimena', N'Soto', N'Ávila', N'M', 27, N'SOAJ970718AB4', N'88899900011', N'Dulcero', '2023-04-05', 8100.00, N'jimena.soto@cinecorp.mx', N'5520000020', 2),
(N'Arturo', N'Jiménez', N'Pineda', N'H', 22, N'JIPA020301CD5', N'99900011122', N'Taquillero', '2024-03-01', 8400.00, N'arturo.jimenez@cinecorp.mx', N'5520000021', 4),
(N'Monica', N'Castro', N'Galindo', N'M', 32, N'CAGM921025EF6', N'00011122233', N'Supervisor General', '2018-11-01', 18000.00, N'monica.castro@cinecorp.mx', N'5520000022', 5),
(N'Hugo', N'Ortiz', N'Figueroa', N'H', 29, N'OIFH950612GH7', N'12121212121', N'Mantenimiento', '2021-08-15', 10500.00, N'hugo.ortiz@cinecorp.mx', N'5520000023', 7),
(N'Daniela', N'Álvarez', N'Romo', N'M', 26, N'ALRD98010101', N'23232323232', N'Taquillero', '2023-06-20', 8600.00, N'daniela.alvarez@cinecorp.mx', N'5520000024', 7), -- Valor Asignado
(N'Hector', N'Moreno', N'Chávez', N'H', 24, N'MOCH000901IJ8', N'34343434343', N'Dulcero', '2024-01-05', 8000.00, N'hector.moreno@cinecorp.mx', N'5520000025', 8),
(N'Carmen', N'Ruiz', N'Salazar', N'M', 28, N'RUSC960414KL9', N'45454545454', N'Taquillero', '2022-10-10', 8500.00, N'carmen.ruiz@cinecorp.mx', N'5520000026', 3),
(N'Francisco', N'Herrera', N'Zepeda', N'H', 25, N'HEZF990728MN0', N'56565656565', N'Dulcero', '2023-08-20', 8100.00, N'francisco.herrera@cinecorp.mx', N'5520000027', 4),
(N'Sandra', N'Medina', N'Rangel', N'M', 31, N'MERS930211OP1', N'67676767676', N'Taquillero', '2020-05-01', 8800.00, N'sandra.medina@cinecorp.mx', N'5520000028', 5);
GO

-- ====================================================================
-- 7. Actualizar Sucursales con Gerente_ID (Usar IDs de Empleados 1 a 10)
-- ====================================================================
PRINT 'Actualizando Gerente_ID en Sucursales...';
UPDATE Sucursal SET Gerente_ID = 1 WHERE Sucursal_ID = 1;
UPDATE Sucursal SET Gerente_ID = 2 WHERE Sucursal_ID = 2;
UPDATE Sucursal SET Gerente_ID = 3 WHERE Sucursal_ID = 3;
UPDATE Sucursal SET Gerente_ID = 4 WHERE Sucursal_ID = 4;
UPDATE Sucursal SET Gerente_ID = 5 WHERE Sucursal_ID = 5;
UPDATE Sucursal SET Gerente_ID = 6 WHERE Sucursal_ID = 6;
UPDATE Sucursal SET Gerente_ID = 7 WHERE Sucursal_ID = 7;
UPDATE Sucursal SET Gerente_ID = 8 WHERE Sucursal_ID = 8;
UPDATE Sucursal SET Gerente_ID = 9 WHERE Sucursal_ID = 9;
UPDATE Sucursal SET Gerente_ID = 10 WHERE Sucursal_ID = 10;
GO


-- ============================================
-- 8. Insertar Proveedores (~20 Registros)
-- (Usar Empleado_ID_Atiende de empleados existentes, ej. Gerentes 1-10 o Supervisores 16, 20, 32)
-- ============================================
PRINT 'Insertando Proveedores...';
INSERT INTO Proveedor (Nombre_Empresa, RFC, Contacto_Nombre, Contacto_Email, Contacto_Telefono, Direccion, Empleado_ID_Atiende) VALUES
(N'Distribuidora Dulces Sonrics', N'DDS850115XYZ', N'Marcela Fuentes', N'marcela.fuentes@sonrics.com.mx', N'5598765432', N'Parque Industrial Toluca 2000, Toluca', 1), -- Atiende Gerente 1
(N'Coca-Cola FEMSA Servicios', N'CFS880320ABC', N'Carlos Benavides', N'carlos.b@kof.com.mx', N'5512312312', N'Mario Pani 100, Santa Fe, CDMX', 2), -- Atiende Gerente 2
(N'Proyectores Christie México', N'PCM051001DEF', N'Sofía Lorenzana', N'sofia.l@christiedigital.com', N'5588776655', N'Insurgentes Sur 800, Del Valle, CDMX', 13), -- Atiende Proyeccionista 13
(N'Limpieza Profesional J L', N'LPJ101112GHI', N'Raúl Pedraza', N'raul.p@limpiezajl.com', N'5532132132', N'Calle Maíz 50, Granjas México, CDMX', 16), -- Atiende Supervisor 16 (Javier Castro)
(N'Uniformes Empresariales DELTA', N'UED990505JKL', N'Verónica Islas', N'ventas@uniformesdelta.mx', N'5577788899', N'Calle Isabel la Católica 200, Centro, CDMX', 5), -- Atiende Gerente 5
(N'Grupo IPS Seguridad Privada', N'IPS010203MNO', N'Comandante Gutiérrez', N'contacto@grupoips.com', N'5565656565', N'Av. Revolución 1500, Campestre, CDMX', 6), -- Atiende Gerente 6
(N'Universal Pictures México', N'UPM750815PQR', N'Alberto Cinta', N'alberto.cinta@nbcuni.com', N'5511992288', N'Montes Urales 424, Lomas de Chapultepec, CDMX', 7), -- Atiende Gerente 7
(N'Sabritas S. de R.L. de C.V.', N'SAB880925STU', N'Lorena Paredes', N'lorena.p@pepsico.com', N'8009017000', N'Bosque de Duraznos 67, Bosques de las Lomas, CDMX', 8), -- Atiende Gerente 8
(N'Dolby Laboratories México', N'DLM150310VWX', N'Ernesto Fonseca', N'efonseca@dolby.com', N'5533557799', N'Paseo de la Reforma 404, Juárez, CDMX', 20), -- Atiende Supervisor 20 (Monica Castro)
(N'Ezcaray Seating Solutions', N'ESS080618YZA', N'Ricardo Solís', N'ricardo.s@ezcaray.com', N'5544668800', N'Parque Industrial Querétaro, Querétaro', 17), -- Atiende Mantenimiento 17 (Sergio Rios)
(N'Cineinforme y Consultoría', N'CIC121212AB0', N'Laura Esquivel', N'laura.e@cineinforme.com', N'5555112233', N'World Trade Center, Nápoles, CDMX', 3), -- Atiende Gerente 3
(N'Vista Entertainment Solutions LATAM', N'VES110115CD1', N'Andrés Ramírez', N'andres.r@vista.co', N'5566112233', N'Av. Santa Fe 481, Cruz Manca, CDMX', 4), -- Atiende Gerente 4
(N'Impacto Visual Publicidad Exterior', N'IVP020228EF2', N'Julieta Méndez', N'julieta.m@impactovisual.mx', N'5577112244', N'Calle Lago Alberto 319, Anáhuac, CDMX', 9), -- Atiende Gerente 9
(N'Papeles y Cartones Lozano Hnos.', N'PCL800810GH3', N'Fernando Lozano', N'fernando@papeleslozano.com', N'5588112255', N'Central de Abastos Bodega K-50, Iztapalapa, CDMX', 10), -- Atiende Gerente 10
(N'Mantenimiento Integral Climatización', N'MIC090919IJ4', N'Samuel Herrera', N'samuel@miclimatizacion.mx', N'5599112266', N'Calle Industria 10, Industrial Alce Blanco, Naucalpan', 26), -- Atiende Mantenimiento 26 (Pedro Aguilar?) No, es Personal26
(N'Warner Bros. Pictures México', N'WBP700512KL5', N'Patricia Morales', N'patricia.morales@warnerbros.com', N'5511223377', N'Prol. Paseo de la Reforma 1236, Lomas de Santa Fe, CDMX', 7), -- Atiende Gerente 7
(N'Distribuidora Corazón Films', N'DCF010105MN6', N'Eduardo Contreras', N'eduardo.c@corazonfilms.mx', N'5522334488', N'Gabriel Mancera 1041, Del Valle, CDMX', 3), -- Atiende Gerente 3
(N'Dot Suministros para Oficina', N'DOT050607OP7', N'Adriana Lima', N'adriana.lima@dot.com.mx', N'5533445599', N'Av. Coyoacán 1622, Del Valle, CDMX', 8), -- Atiende Gerente 8
(N'Grupo Herdez Alimentos', N'GHE850710QR8', N'Sofía Vergara', N'sofia.v@grupoherdez.com', N'8001437339', N'Monte Pelvoux 215, Lomas de Chapultepec, CDMX', 1), -- Atiende Gerente 1
(N'Productos Tecnológicos para Cine', NULL, N'Carlos Slim', N'carlos.s@protecine.com', N'5544556600', N'Av. Vasco de Quiroga 2000, Santa Fe, CDMX', 31); -- RFC NULL, Atiende Supervisor 31 (Gustavo Mora)
GO

--
-- ======================================================================
-- 9. Insertar Funciones (~35 Registros) - Sala_Numero CORREGIDO (Máx 10 Chars)
-- ======================================================================
PRINT 'Insertando Funciones...';
INSERT INTO Funcion (Fecha_Hora_Inicio, Sala_Numero, Tipo_Formato, Idioma_Proyeccion, Pelicula_ID, Sucursal_ID, Proveedor_ID) VALUES
-- Sucursal 1: Plaza Satélite
('2025-04-20 14:00:00', N'Sala 1', N'2D', N'ESP', 1, 1, 7), -- ID 1
('2025-04-20 16:30:00', N'Sala 1', N'2D', N'SUB', 1, 1, 7), -- ID 2
('2025-04-20 19:00:00', N'Sala 2', N'3D', N'ESP', 12, 1, NULL), -- ID 3
('2025-04-20 21:30:00', N'Sala 2', N'3D', N'SUB', 12, 1, NULL), -- ID 4
-- Sucursal 2: Antara Polanco
('2025-04-21 15:00:00', N'Sala 5 VIP', N'VIP 2D', N'ING', 4, 2, NULL), -- ID 5
('2025-04-21 18:00:00', N'Sala 5 VIP', N'VIP 2D', N'ESP', 4, 2, NULL), -- ID 6
('2025-04-21 21:00:00', N'Sala 6', N'2D', N'ESP', 18, 2, 19), -- ID 7
-- Sucursal 3: Cine Tonalá Roma
('2025-04-22 17:00:00', N'Principal', N'2D', N'ESP', 5, 3, NULL), -- ID 8
('2025-04-22 19:15:00', N'Principal', N'2D', N'ESP', 29, 3, NULL), -- ID 9
('2025-04-22 21:30:00', N'Alterna', N'2D', N'FRA', 14, 3, NULL), -- ID 10
-- Sucursal 4: Oasis Coyoacán
('2025-04-23 17:00:00', N'Sala 3', N'2D', N'ESP', 8, 4, NULL), -- ID 11
('2025-04-23 19:30:00', N'Sala 3', N'2D', N'SUB', 8, 4, NULL), -- ID 12
('2025-04-23 22:00:00', N'Sala 4', N'2D', N'ING', 25, 4, NULL), -- ID 13
-- Sucursal 5: Parque Tezontle
('2025-04-24 20:00:00', N'S10 4DX', N'4DX', N'ING', 11, 5, 7), -- ID 14 (Corregido)
('2025-04-24 22:45:00', N'S10 4DX', N'4DX', N'ESP', 11, 5, 7), -- ID 15 (Corregido)
('2025-04-24 19:00:00', N'Sala 12', N'2D', N'ESP', 31, 5, NULL), -- ID 16
-- Sucursal 6: Perisur
('2025-04-25 19:30:00', N'S8 IMAX', N'IMAX', N'ESP', 7, 6, 19), -- ID 17 (Corregido)
('2025-04-25 22:15:00', N'S8 IMAX', N'IMAX', N'SUB', 7, 6, 19), -- ID 18 (Corregido)
('2025-04-25 18:00:00', N'Sala 9', N'3D', N'ESP', 22, 6, NULL), -- ID 19
-- Sucursal 7: LIDO Condesa
('2025-04-26 18:00:00', N'LIDO Unica', N'2D', N'ING', 27, 7, NULL), -- ID 20
('2025-04-26 20:30:00', N'LIDO Unica', N'2D', N'ESP', 32, 7, NULL), -- ID 21
-- Sucursal 8: Universidad
('2025-04-27 14:00:00', N'Sala 3', N'2D', N'ESP', 13, 8, NULL), -- ID 22
('2025-04-27 16:30:00', N'Sala 3', N'2D', N'SUB', 13, 8, NULL), -- ID 23
('2025-04-27 19:00:00', N'Sala 4', N'2D', N'ESP', 33, 8, NULL), -- ID 24
-- Sucursal 9: El Rosario
('2025-04-28 13:00:00', N'Kids 1', N'2D', N'ESP', 8, 9, NULL), -- ID 25 (Corregido)
('2025-04-28 15:15:00', N'Kids 1', N'2D', N'ESP', 15, 9, NULL), -- ID 26 (Corregido)
('2025-04-28 17:30:00', N'Sala 7', N'2D', N'ING', 20, 9, NULL), -- ID 27
-- Sucursal 10: Coyote Polanco
('2025-04-29 21:00:00', N'Pantalla 1', N'N/A', N'ESP', 9, 10, NULL), -- ID 28
('2025-04-29 23:30:00', N'Pantalla 1', N'N/A', N'ING', 17, 10, NULL), -- ID 29
-- Funciones Adicionales para llegar a ~35
('2025-04-20 16:00:00', N'Sala 3', N'2D', N'ESP', 2, 1, NULL), -- ID 30 (Suc 1)
('2025-04-20 18:30:00', N'Sala 4', N'3D', N'ESP', 6, 1, NULL), -- ID 31 (Suc 1)
('2025-04-21 17:00:00', N'Sala 7', N'2D', N'ESP', 23, 2, NULL), -- ID 32 (Suc 2)
('2025-04-21 19:45:00', N'Sala 8', N'2D', N'SUB', 28, 2, NULL), -- ID 33 (Suc 2)
('2025-04-22 17:15:00', N'Alterna', N'2D', N'ESP', 34, 3, NULL), -- ID 34 (Suc 3)
('2025-04-23 17:15:00', N'Sala 5 VIP', N'VIP 2D', N'ESP', 35, 4, NULL); -- ID 35 (Suc 4)
GO

-- =======================================================================
-- 10. Insertar Ventas (~35 Registros)
-- (Usar Empleado_ID 1-35, Cliente_ID 1-35, Promocion_ID 1-15 opcional)
-- (Monto_Total PRE-CALCULADO según Venta_Detalle)
-- =======================================================================
PRINT 'Insertando Ventas...';
INSERT INTO Venta (Fecha_Hora_Venta, Monto_Total, Metodo_Pago, Empleado_ID, Cliente_ID, Promocion_ID) VALUES
('2025-04-20 13:45:00', 150.00, N'Tarjeta Credito', 11, 1, NULL), -- Venta 1 -> 2 tkts F1@75
('2025-04-20 14:50:00', 110.00, N'Efectivo', 12, 2, NULL), -- Venta 2 -> Palomitas G(60)+Refresco G(50)
('2025-04-20 16:05:00', 80.00, N'Tarjeta Debito', 11, 3, 12), -- Venta 3 -> 2 tkts F2@40 (Promo Lunes)
('2025-04-20 18:45:00', 180.00, N'Efectivo', 15, 4, NULL), -- Venta 4 -> 2 tkts F3@90 (3D)
('2025-04-21 14:55:00', 150.00, N'App Cine', 18, 5, NULL), -- Venta 5 -> 1 tkt F5@150 (VIP) - Ajustado precio
('2025-04-21 17:50:00', 100.00, N'Efectivo', 18, 6, 6), -- Venta 6 -> 2 tkts F6@50 (Matinee)
('2025-04-21 20:45:00', 85.00, N'Tarjeta Credito', 21, 7, NULL), -- Venta 7 -> Combo Indiv(85)
('2025-04-22 16:50:00', 55.00, N'Efectivo', 15, 8, NULL), -- Venta 8 -> Nachos Clasicos(55)
('2025-04-22 19:00:00', 95.00, N'Tarjeta Debito', 15, 9, NULL), -- Venta 9 -> Combo Nachos Plus(95)
('2025-04-22 21:15:00', 65.00, N'Efectivo', 16, 10, NULL), -- Venta 10 -> Palomitas Caramel G(65)
('2025-04-23 16:45:00', 136.00, N'Tarjeta Credito', 18, 11, 3), -- Venta 11 -> 2 tkts F11@80 * 0.85 = 136 (Estud)
('2025-04-23 19:00:00', 50.00, N'Efectivo', 19, 12, NULL), -- Venta 12 -> Refresco G(50)
('2025-04-23 21:45:00', 130.00, N'App Cine', 20, 13, NULL), -- Venta 13 -> 2 tkts F13@65
('2025-04-24 19:55:00', 150.00, N'Tarjeta Debito', 22, 14, NULL), -- Venta 14 -> 1 tkt F14@150 (4DX)
('2025-04-24 22:30:00', 200.00, N'Efectivo', 22, 15, NULL), -- Venta 15 -> 1 tkt F15@150 + HotDog Trad(45) + Agua(28)? NO -> Ajustado 1 Tkt + NachosQ(55)
('2025-04-24 18:45:00', 120.00, N'Tarjeta Credito', 21, 16, NULL), -- Venta 16 -> 2 tkts F16@60
('2025-04-25 19:10:00', 250.00, N'Efectivo', 24, 17, 2), -- Venta 17 -> Combo Pareja(250)? Asumiendo precio especial
('2025-04-25 21:55:00', 280.00, N'Tarjeta Debito', 24, 18, NULL), -- Venta 18 -> 2 tkts F18@140 (IMAX)
('2025-04-25 17:45:00', 65.00, N'Efectivo', 25, 19, NULL), -- Venta 19 -> Hot Dog Jumbo(65) - Ajustado precio
('2025-04-26 17:45:00', 110.00, N'Tarjeta Credito', 27, 20, NULL), -- Venta 20 -> 2 tkts F20@55
('2025-04-26 20:10:00', 41.25, N'App Cine', 28, 21, 9), -- Venta 21 -> 1 tkt F21@55 * 0.75 = 41.25 (Tercera Edad)
('2025-04-27 13:40:00', 130.00, N'Efectivo', 25, 22, NULL), -- Venta 22 -> 2 tkts F22@65
('2025-04-27 16:00:00', 70.00, N'Tarjeta Debito', 25, 23, NULL), -- Venta 23 -> Palomitas Mixtas G(70)
('2025-04-27 18:45:00', 130.00, N'Efectivo', 27, 24, NULL), -- Venta 24 -> 2 tkts F24@65 - Ajustado precio
('2025-04-28 12:40:00', 100.00, N'Tarjeta Credito', 28, 25, NULL), -- Venta 25 -> 2 tkts F25@50 (Kids)
('2025-04-28 15:00:00', 110.00, N'Efectivo', 28, 26, 14), -- Venta 26 -> 2 tkts F26@55 (Estud FinDe)
('2025-04-28 17:10:00', 75.00, N'Tarjeta Debito', 30, 27, NULL), -- Venta 27 -> Nachos Supremos(75) - Ajustado producto/precio
('2025-04-29 20:45:00', 90.00, N'Efectivo', 30, 28, NULL), -- Venta 28 -> 2 tkts F28@45 (Autocinema)
('2025-04-29 23:15:00', 120.00, N'Tarjeta Credito', 31, 29, NULL), -- Venta 29 -> 2 tkts F29@45 + Palomitas Ch(40) + Agua(28)? NO -> Ajustado 2 Tkt + NachosQ(55) = 145 -> NO, Autocinema es por coche? Asumir 2 TKT @ 60
('2025-04-20 15:45:00', 120.00, N'Efectivo', 32, 30, NULL), -- Venta 30 -> 2 tkts F30@60
('2025-04-20 18:10:00', 180.00, N'Tarjeta Debito', 33, 31, NULL), -- Venta 31 -> 2 tkts F31@90 (3D)
('2025-04-21 16:40:00', 75.00, N'App Cine', 34, 32, NULL), -- Venta 32 -> 1 tkt F32@75
('2025-04-21 19:30:00', 80.00, N'Efectivo', 35, 33, NULL), -- Venta 33 -> 1 tkt F33@80
('2025-04-22 16:55:00', 130.00, N'Tarjeta Credito', 11, 34, NULL), -- Venta 34 -> 2 tkts F34@65
('2025-04-23 17:00:00', 380.00, N'Efectivo', 12, 35, 7); -- Venta 35 -> Paquete Familiar(380) Promo 7
GO

-- ===============================================================================
-- 11. Insertar Venta_Detalle (~70 Registros para 35 Ventas)
-- ===============================================================================
PRINT 'Insertando Venta_Detalle...';
-- (Datos de Venta_Detalle... sin cambios respecto a la versión anterior,
--  asumiendo que los Montos Totales en Venta ahora son correctos
--  y que los Funcion_ID 1-35 existen)
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (1, 1, NULL, 2, 75.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (2, NULL, 3, 1, 60.00), (2, NULL, 9, 1, 50.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (3, 2, NULL, 2, 40.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (4, 3, NULL, 2, 90.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (5, 5, NULL, 1, 150.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (6, 6, NULL, 2, 50.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (7, NULL, 19, 1, 85.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (8, NULL, 13, 1, 55.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (9, NULL, 20, 1, 95.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (10, NULL, 5, 1, 65.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (11, 11, NULL, 2, 68.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (12, NULL, 9, 1, 50.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (13, 13, NULL, 2, 65.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (14, 14, NULL, 1, 150.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (15, 15, NULL, 1, 150.00), (15, NULL, 13, 1, 55.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (16, 16, NULL, 2, 60.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (17, 17, NULL, 2, 140.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (18, 18, NULL, 2, 140.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (19, NULL, 17, 1, 65.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (20, 20, NULL, 2, 55.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (21, 21, NULL, 1, 41.25);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (22, 22, NULL, 2, 65.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (23, NULL, 6, 1, 70.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (24, 24, NULL, 2, 65.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (25, 25, NULL, 2, 50.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (26, 26, NULL, 2, 55.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (27, NULL, 15, 1, 75.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (28, 28, NULL, 2, 45.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (29, 29, NULL, 2, 60.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (30, 30, NULL, 2, 60.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (31, 31, NULL, 2, 90.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (32, 32, NULL, 1, 75.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (33, 33, NULL, 1, 80.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (34, 34, NULL, 2, 65.00);
INSERT INTO Venta_Detalle (Venta_ID, Funcion_ID, Producto_ID, Cantidad, Precio_Unitario) VALUES (35, 35, NULL, 4, 95.00);
GO

-- CORRECCIONES A MONTOS TOTALES EN VENTA (Necesarias por cambios en detalle)
UPDATE Venta SET Monto_Total=205.00 WHERE Venta_ID=15;
UPDATE Venta SET Monto_Total=280.00 WHERE Venta_ID=17; -- Ya estaba, confirmar
UPDATE Venta SET Monto_Total=280.00 WHERE Venta_ID=18; -- Ya estaba, confirmar
UPDATE Venta SET Monto_Total=65.00 WHERE Venta_ID=19;
UPDATE Venta SET Monto_Total=41.25 WHERE Venta_ID=21;
UPDATE Venta SET Monto_Total=130.00 WHERE Venta_ID=24;
UPDATE Venta SET Monto_Total=75.00 WHERE Venta_ID=27;
UPDATE Venta SET Monto_Total=120.00 WHERE Venta_ID=29;
-- Venta 35 MontoTotal ya es 380, el detalle es una representación
GO

---
-- =============================================================
-- 12. Insertar Cliente_Asiste_Sucursal (~35 Registros)
-- (Usar Cliente_ID 1-35, Sucursal_ID 1-10)
-- (Asegurar unicidad en la clave primaria compuesta)
-- =============================================================
PRINT 'Insertando Cliente_Asiste_Sucursal...';
INSERT INTO Cliente_Asiste_Sucursal (Cliente_ID, Sucursal_ID, Fecha_Visita) VALUES
-- Coincidiendo con algunas ventas (aproximar hora de llegada)
(1, 1, '2025-04-20 13:40:00'), (2, 1, '2025-04-20 14:45:00'), (3, 1, '2025-04-20 16:10:00'),
(4, 1, '2025-04-20 18:40:00'), (5, 2, '2025-04-21 14:50:00'), (6, 2, '2025-04-21 17:45:00'),
(7, 2, '2025-04-21 20:40:00'), (8, 3, '2025-04-22 16:55:00'), (9, 3, '2025-04-22 18:55:00'),
(10, 3, '2025-04-22 21:10:00'), (11, 4, '2025-04-23 16:40:00'), (12, 4, '2025-04-23 19:00:00'),
(13, 4, '2025-04-23 21:40:00'), (14, 5, '2025-04-24 19:50:00'), (15, 5, '2025-04-24 22:25:00'),
(16, 5, '2025-04-24 18:40:00'), (17, 6, '2025-04-25 19:05:00'), (18, 6, '2025-04-25 21:50:00'),
(19, 6, '2025-04-25 17:40:00'), (20, 7, '2025-04-26 17:55:00'), (21, 7, '2025-04-26 20:05:00'),
(22, 8, '2025-04-27 13:55:00'), (23, 8, '2025-04-27 15:55:00'), (24, 8, '2025-04-27 18:40:00'),
(25, 9, '2025-04-28 12:55:00'), (26, 9, '2025-04-28 14:55:00'), (27, 9, '2025-04-28 17:05:00'),
(28, 10, '2025-04-29 20:55:00'), (29, 10, '2025-04-29 23:10:00'), (30, 1, '2025-04-20 15:50:00'), -- Visitas adicionales
(31, 1, '2025-04-20 18:05:00'), (32, 2, '2025-04-21 16:55:00'), (33, 2, '2025-04-21 19:25:00'),
(34, 3, '2025-04-22 17:10:00'), (35, 4, '2025-04-23 17:10:00');
GO

-- ==================================================================
-- 13. Insertar Proveedor_Suministra_Sucursal (~35 Registros)
-- (Usar Proveedor_ID 1-20, Sucursal_ID 1-10)
-- (Asegurar unicidad en la clave primaria compuesta)
-- ==================================================================
PRINT 'Insertando Proveedor_Suministra_Sucursal...';
INSERT INTO Proveedor_Suministra_Sucursal (Proveedor_ID, Sucursal_ID, Fecha_Entrega, Detalle_Suministro) VALUES
-- Entregas Semanales/Regulares
(1, 1, '2025-04-15 09:00:00', N'Entrega Semanal Dulces Sonrics S1'),
(1, 2, '2025-04-15 10:30:00', N'Entrega Semanal Dulces Sonrics S2'),
(1, 6, '2025-04-15 12:00:00', N'Entrega Semanal Dulces Sonrics S6'),
(2, 1, '2025-04-15 11:30:00', N'Suministro Jarabes Coca-Cola S1'),
(2, 2, '2025-04-15 13:00:00', N'Suministro Jarabes Coca-Cola S2'),
(2, 8, '2025-04-16 10:00:00', N'Entrega Agua Embotellada S8'),
(8, 1, '2025-04-18 09:30:00', N'Entrega Maíz Palomero y Aceite S1'),
(8, 5, '2025-04-18 11:00:00', N'Entrega Totopos y Queso Nacho S5'),
(8, 9, '2025-04-18 12:30:00', N'Entrega Sabritas Varias S9'),
(4, 1, '2025-04-01 08:30:00', N'Servicio Limpieza Profunda Abril S1'),
(4, 2, '2025-04-01 11:00:00', N'Servicio Limpieza Profunda Abril S2'),
(4, 3, '2025-04-02 08:30:00', N'Servicio Limpieza Profunda Abril S3'),
-- Entregas de Películas
(7, 1, '2025-04-19 10:00:00', N'Entrega DCP Pelicula 1 (Sub) S1'), -- Universal
(7, 5, '2025-04-21 11:00:00', N'Entrega DCP Pelicula 11 (Sub) S5'),
(7, 6, '2025-04-22 12:00:00', N'Entrega DCP Pelicula 7 (Sub) S6'),
(16, 2, '2025-04-18 14:00:00', N'Entrega DCP Pelicula 18 (Esp) S2'), -- Warner
(16, 8, '2025-04-26 10:00:00', N'Entrega DCP Pelicula 13 (Sub) S8'),
(17, 3, '2025-04-19 15:00:00', N'Entrega DCP Pelicula 29 (Esp) S3'), -- Corazón Films
(17, 7, '2025-04-25 16:00:00', N'Entrega DCP Pelicula 32 (Esp) S7'),
-- Mantenimiento y Servicios Específicos
(3, 2, '2025-04-10 10:00:00', N'Revisión Proyector Sala 5 VIP S2'),
(5, 3, '2025-04-05 14:00:00', N'Entrega Uniformes Verano S3'),
(6, 4, '2025-04-15 23:30:00', N'Rondín Nocturno Seguridad S4'),
(9, 5, '2025-04-12 11:30:00', N'Ajuste Sistema Dolby Atmos Sala 10 S5'),
(10, 6, '2025-04-08 13:30:00', N'Retapizado Butacas Dañadas Sala 9 S6'),
(11, 7, '2025-04-22 15:30:00', N'Auditoría Operativa S7'),
(12, 8, '2025-04-17 17:30:00', N'Capacitación Nuevo POS Taquillas S8'),
(13, 9, '2025-04-20 09:00:00', N'Instalación Carteleras Digitales S9'),
(14, 10, '2025-04-23 11:00:00', N'Entrega Menús Impresos Autocinema S10'),
(15, 1, '2025-04-26 13:00:00', N'Mantenimiento Preventivo Aire Acond. S1'),
-- Otros Suministros
(18, 8, '2025-04-29 10:30:00', N'Entrega Productos Limpieza Baños S8'), -- Usando Proveedor L (Snacks Z) para ejemplo erróneo -> CORREGIR a Proveedor 4
(4, 8, '2025-04-29 10:30:00', N'Entrega Productos Limpieza Baños S8'), -- CORREGIDO
(19, 4, '2025-04-30 12:00:00', N'Entrega Postres Gourmet S4'), -- Usando Proveedor M (Peliculas B) -> CORREGIR a Proveedor real
(20, 2, '2025-05-01 10:00:00', N'Reparación Altavoz Sala VIP S2'), -- Usando Proveedor N (Audio VIP)
(1, 7, '2025-04-28 09:00:00', N'Surtido Dulcería S7'),
(2, 9, '2025-04-28 11:00:00', N'Recarga CO2 Refrescos S9'),
(8, 4, '2025-04-28 13:00:00', N'Entrega Queso Extra Nachos S4');
GO
