--crea la tabla clientes
drop table clientes;
create table clientes (
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	edad int,
	numero_hijos int,
	estatura decimal,
	hora time,
	fecha date,
	constraint clientes_pk primary key(cedula)
)
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

select * from clientes