USE cine;
GO

DELETE FROM promociones;
GO
--    ventas depende de empleados y funciones
DELETE FROM ventas;
GO
--    empleados depende de sucursales
DELETE FROM empleados;
GO
--    funciones depende de peliculas y sucursales
DELETE FROM funciones;
GO
--    sucursales depende de clientes y proveedores
DELETE FROM sucursales;
GO

-- 2. Eliminar de tablas base (que son referenciadas por otras, ahora vacías)
--    peliculas es referenciada por funciones
DELETE FROM peliculas;
GO
--    proveedores es referenciada por sucursales
DELETE FROM proveedores;
GO
--    clientes es referenciada por sucursales y promociones
DELETE FROM clientes;
GO