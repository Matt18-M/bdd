drop table if exists cabecera_ventas;
create table cabecera_ventas(
codigo int not null,
fecha timestamp without time zone not null,
total_sin_iva money not null,
iva money not null,
total money not null,
constraint cabecera_ventas_pk primary key(codigo)
)


drop table if exists detalle_ventas;
create table detalle_ventas(
codigo int not null,
cabecera_ventas int not null,
producto char not null,
cantidad int not null,
precio_venta money not null,
subtotal money not null,
subtotal_iva money not null,
constraint detalle_ventas_pk primary key(codigo),
constraint cabecera_detalle_ventas_fk foreign key (cabecera_ventas)
references cabecera_ventas(codigo),
constraint productos_ventas_fk foreign key(producto)
references productos (codigo_producto)
)

