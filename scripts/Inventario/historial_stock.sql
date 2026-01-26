drop table if exists historial_stock;
create table historial_stock(
codigo int not null,
fecha timestamp without time zone not null,
referencia varchar(100),
producto char not null,
cantidad int not null,
constraint historial_stock_pk primary key(codigo),
constraint stock_producto_fk foreign key (producto)
references productos(codigo_producto)
)
