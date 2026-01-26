drop table if exists detalle_pedidos;
create table detalle_pedidos(
codigo int not null,
cabecera_pedido int not null,
producto char not null,
cantidad_solicitada int not null,
subtotal money not null,
cantidad_recibida int not null,
constraint detalle_pedidos_pk primary key(codigo),
constraint cabecera_detalles_pedidos_fk foreign key(cabecera_pedido)
references cabecera_pedidos(numero),
constraint pedido_producto_fk foreign key(producto)
references productos(codigo_producto)
)