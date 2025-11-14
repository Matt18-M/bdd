--elimina tabla
drop table clientes;
--crea la tabla clientes

create table clientes (
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	edad int,
	numero_hijos int,
	estatura decimal,
	hora time,
	fecha date,
	--clave primaria
	constraint clientes_pk primary key(cedula)
)

--inserta datos en la tabla clientes	
insert into clientes (cedula,nombre,apellido)
values('0150560811','Mateo','Molina')

insert into clientes (cedula,nombre,apellido,edad)
values('0150560822','Mateo','Molina',22)

insert into clientes (cedula,nombre,apellido,edad)
values('0150560833','Mateo','Molina',22)

insert into clientes (cedula,nombre,apellido,estatura)
values('0150560844','Mateo','Molina',1.60)

insert into clientes (cedula,nombre,apellido,numero_hijos)
values('0150560855','Mateo','Molina',1)

insert into clientes (cedula,nombre,apellido,estatura,numero_hijos)
values('0150560866','Roberto','Morales',1.66,5)

insert into clientes (cedula,nombre,apellido,estatura,fecha,hora)
values('0150560877','Mateo','Molina',1.60,'30/12/2002','12:55')

--consulta datos de la tabla clientes
select * from clientes

--consulta datos de la tabla cualquier dato que busques
select * from clientes where edad=22
--consulta datos de la tabla clientes con estatura mayor a 1.60
select * from clientes where estatura > 1.60
--consulta datos de la tabla clientes con estatura menor o igual a 1.60
select * from clientes where estatura <= 1.60

--consulta de datos desde una fecha hasta otra fecha
select * from clientes where  fecha between '30/12/1900' and '11/12/2022'

--consulta de datos que al usar like % se busque cualquier dato que contenga la letra o letras que se indiquen 
select * from clientes where nombre like 'M%'
select * from clientes where apellido like '%a%'

--consulta de datos nulos
select * from clientes where edad is null
--consulta de datos no nulos
select * from clientes where edad is not null

--consulta de datos diferentes a un valor
select * from clientes where edad >< 15
select * from clientes where edad != 15

--actualiza datos en la tabla clientes
update clientes set edad=23 where cedula='0150560822'

--elimina datos en la tabla clientes
delete from clientes where cedula ='0150560222'

--consulta de datos por mes en especifico
select * from clientes  where extract(month from fecha) = 9  -- Septiembre