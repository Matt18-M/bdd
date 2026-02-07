drop table if exists estado_pedido;
create table estado_pedido(
codigo char not null,
descripcion varchar(100) not null,
constraint estado_pedido_pk primary key(codigo)
)


drop table if exists cabecera_pedidos;
create table cabecera_pedidos(
numero int not null,
proveedor varchar(20) not null,
fecha date not null,
estado char not null,
constraint cabecera_pedidos_pk primary key(numero),
constraint pedidos_proveedor_fk foreign key (proveedor)
references proveedores(identificador),
constraint estado_cabecera_pedidos_fk foreign key(estado)
references estado_pedido (codigo)
)




