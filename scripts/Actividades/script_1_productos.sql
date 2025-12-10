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
values (010203,'Leche','Producto Lacteo','0,99',6);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (010204,'Chocolate','Producto dulce','1,50',10);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (010205,'Arroz','Producto en grano','1',5);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (010206,'Cafe','Producto con cafeina','1,75',15);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (010207,'Pollo','Carne','12,50',13);

insert into productos (codigo,nombre,precio,stock)
values (010208,'Pan','0,20',30);

insert into productos (codigo,nombre,precio,stock)
values (010209,'Caramelo','0,50',60);

insert into productos (codigo,nombre,precio,stock)
values (010210,'Mantequilla','1,69',15);

insert into productos (codigo,nombre,precio,stock)
values (010211,'Queso','1',25);

insert into productos (codigo,nombre,precio,stock)
values (010212,'Mayonesa','2,23',5);

insert into productos (codigo,nombre,precio)
values (010213,'Atun','1,23');

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (5,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (6,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300);

select * from productos

select * from productos where nombre like 'Q%'

select * from productos where descripcion is null

select * from productos where precio between '2' and '3'

update productos set stock=0 where stock is null

delete from productos where descripcion is null

select * from productos
where stock = 10 and precio < '10'

select nombre,stock from productos
where nombre like '%m%' or nombre like '% %' 

select nombre from productos
where descripcion is null or stock=0

