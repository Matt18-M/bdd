--script 3
create table estudiantes(
cedula char(10) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
email varchar(50) not null,
fecha_nacimiento date not null,
constraint script3_pk primary key(cedula)
)
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038801,'Mateo','Molina','mateo@gmail.com','30/12/2002')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038802,'Dario','Morales','Dario@gmail.com','10/11/2001')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038803,'Roberto','Capa','robert@gmail.com','12/02/1995')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038804,'Nicole','Buele','nicole@gmail.com','21/05/1997')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038805,'Camila','Gomez','camila@gmail.com','04/07/2003')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038806,'Fraklin','Tapia','franklin@gmail.com','20/10/2010')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038807,'Eduardo','Zhinin','Eduardo@gmail.com','02/12/2004')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038808,'Martin','Gonzales','martin@gmail.com','23/06/2001')

select * from estudiantes