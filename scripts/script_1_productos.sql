--script 1
create table productos(
codigo int not null,
nombre varchar(50) not null,
descripcion varchar(200),
precio money not null,
stock int ,
constraint script_pk primary key(codigo)
)
insert into productos (codigo,nombre,descripcion,precio,stock)
values (010203,'Leche','Producto Lacteo','0,99',6)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (010204,'Chocolate','Producto dulce','1,50',10)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (010205,'Arroz','Producto en grano','1',5)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (010206,'Cafe','Producto con cafeina','1,75',15)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (010207,'Pollo','Carne','12,50',13)

insert into productos (codigo,nombre,precio,stock)
values (010208,'Pan','0,20',30)

insert into productos (codigo,nombre,precio,stock)
values (010209,'Caramelo','0,50',60)

insert into productos (codigo,nombre,precio,stock)
values (010210,'Mantequilla','1,69',15)

insert into productos (codigo,nombre,precio,stock)
values (010211,'Queso','1',25)

insert into productos (codigo,nombre,precio,stock)
values (010212,'Mayonesa','2,23',5)

insert into productos (codigo,nombre,precio)
values (010213,'Atun','1,23')

select * from productos

select * from productos where nombre like 'Q%'

select * from productos where descripcion is null

select * from productos where precio between '2' and '3'

update productos set stock=0 where stock is null

select * from productos

delete from productos where descripcion is null

select * from productos