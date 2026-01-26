drop table if exists productos;
create table productos(
codigo_producto char not null,
nombre varchar(100) not null,
udm char(2) not null,
precio_venta money not null,
tiene_iva boolean not null,
coste money not null,
categorias int not null,
stock int not null,
constraint productos_pk primary key(codigo_producto),
constraint productos_fk foreign key(udm)
references UDM (codigo_udm),
constraint productos1_fk foreign key(categorias)
references categorias (codigo_cat)
)