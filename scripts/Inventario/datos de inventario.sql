-- Tabla: categorias_UDM
insert into categorias_UDM (codigo_categoria_udm, nombre) values
('U', 'unidad'),
('V', 'volumen'),
('P', 'peso');

-- Tabla: UDM
insert into UDM (codigo_udm, descripcion, categoria_udm) values
('ml', 'mililitros', 'V'),
('l', 'litros', 'V'),
('u', 'unidad', 'U'),
('d', 'docena', 'U'),
('g', 'gramos', 'P'),
('kg', 'kilogramos', 'P'),
('lb', 'libras', 'P');

-- Tabla: categorias
insert into categorias (codigo_cat, nombre, categoria_padre) values
(1, 'materia prima', null),
(2, 'proteina', 1),
(3, 'salsas', 1),
(4, 'punto de venta', null),
(5, 'bebidas', 4),
(6, 'con alcohol', 5),
(7, 'sin alcohol', 5);

-- Tabla: tipo_documentos
insert into tipo_documentos (codigo, descripcion) values
('C', 'CEDULA'),
('R', 'RUC');

-- Tabla: proveedores
insert into proveedores (identificador, tipo_documento, nombre, telefono, correo, direccion) values
('013456789', 'R', 'Distribuidora Alimentos S.A.', '02-2345678', 'ventas@dalimentos.com', 'Av. Principal 123, Quito'),
('023457888', 'R', 'Bebidas Nacionales C.A.', '04-3456789', 'pedidos@bebidasnac.com', 'Calle Comercio 456, Guayaquil');

-- Tabla: estado_pedido
insert into estado_pedido (codigo, descripcion) values
('S', 'solicitado'),
('R', 'recibido');

-- Tabla: productos
insert into productos (codigo_producto, nombre, udm, precio_venta, tiene_iva, coste, categorias, stock) values
('1', 'coca cola pequeña', 'u', 0.5804, true, 0.3729, 7, 100),
('2', 'salsa de tomate', 'kg', 0.95, true, 0.8736, 3, 0),
('3', 'mostaza', 'kg', 0.95, true, 0.89, 3, 0),
('4', 'fuze tea', 'u', 0.8, true, 0.7, 7, 50);

-- Tabla: cabecera_pedidos 
insert into cabecera_pedidos (numero, proveedor, fecha, estado) values
(3, '023457888', '2026-01-10', 'R'),
(4, '023457888', '2026-01-15', 'R');

-- Tabla: detalle_pedidos
insert into detalle_pedidos (cabecera_pedido, producto, cantidad_solicitada, subtotal, cantidad_recibida) values
(1, '1', 100, 37.29, 100),
(1, '4', 50, 11.8, 50),
(2, '1', 10, 3.73, 10);

-- Tabla: historial_stock 
insert into historial_stock (codigo, fecha, referencia, producto, cantidad) values
(1, '2026-01-10 09:00:00', 'pedido1', '1', 100),
(2, '2026-01-10 09:00:00', 'pedido1', '4', 50),
(3, '2026-01-15 10:30:00', 'pedido2', '1', 10),
(4, '2026-01-12 14:15:00', 'venta1', '1', -5),
(5, '2026-01-12 14:15:00', 'venta1', '4', -1);

-- Tabla: cabecera_ventas
insert into cabecera_ventas (codigo, fecha, total_sin_iva, iva, total) values
(1, '2026-01-12 14:15:00', 3.26, 0.39, 3.65),
(2, '2026-01-13 11:20:00', 5.80, 0.70, 6.50),
(3, '2026-01-14 16:45:00', 1.90, 0.23, 2.13);

-- Tabla: detalle_ventas
insert into detalle_ventas (codigo, cabecera_ventas, producto, cantidad, precio_venta, subtotal, subtotal_iva) values
(1, 1, '1', 5, 0.58, 2.90, 3.25),
(2, 1, '4', 1, 0.36, 0.36, 0.40),
(3, 2, '1', 10, 0.58, 5.80, 6.50),
(4, 3, '2', 2, 0.95, 1.90, 2.13);

select * from productos;
select * from categorias;
select * from categorias_UDM;
select * from UDM;
select * from detalle_pedidos;
select * from historial_stock;
select * from tipo_documentos;
select * from cabecera_pedidos;
select * from cabecera_ventas;
select * from proveedores;
select * from estado_pedido;
select * from detalle_ventas;


SELECT * FROM detalle_pedidos WHERE codigo = 5 AND cabecera_pedido = 7;
