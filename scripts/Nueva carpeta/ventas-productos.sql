create table ventas(
id_venta int,
codigo_producto int not null,
fecha_venta date not null,
cantidad int,
constraint ventas_pk primary key (id_venta)
)

alter table ventas
add constraint ventas_productos_fk 
foreign key (codigo_producto)
references productos(codigo)

--inserts
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values (1, 10203, '2023-01-10', 2);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values (2, 10204, '2023-01-12', 3);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values (3, 10205, '2023-01-15', 1);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values (4, 10206, '2023-01-18', 5);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values (5, 10207, '2023-01-20', 2);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values (6, 1, '2023-01-22', 3);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values (7, 2, '2023-01-25', 4);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values (8, 8, '2023-01-28', 2);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values (9, 9, '2023-01-30', 1);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values (10, 10, '2023-02-01', 3);


--consulta obtener el nombre,stock y cantidad de productos y ventas cuyo nombre contiene la letra "m" o la descripcion sea igual a 0
select 
    p.nombre,
    p.stock,
    v.cantidad
from productos p, ventas v
where p.codigo = v.codigo_producto
and (p.nombre ilike '%m%' or p.descripcion is null);


--subconsulta obtener nombre y stock de los productos donde el codigo de producto de las venta sea una cantidad de 5
select distinct p.nombre, p.stock
from productos p, ventas v
where p.codigo = v.codigo_producto
and v.cantidad = 5;


