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

alter table estudiantes
add column codigo_profesor int;



select * from estudiantes

select nombre,cedula from estudiantes

--inserts
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0102030405', 'Juan', 'Martínez', 'juan.martinez@email.com', '2005-03-15', 1);
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0102030406', 'Ana', 'González', 'ana.gonzalez@email.com', '2006-07-22', 2);
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0102030407', 'Luis', 'Fernández', 'luis.fernandez@email.com', '2005-11-30', 3);
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0102030408', 'María', 'Ramírez', 'maria.ramirez@email.com', '2007-01-10', 4);
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0102030409', 'Carlos', 'Sánchez', 'carlos.sanchez@email.com', '2006-05-18', 5);
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0102030410', 'Sofía', 'Pérez', 'sofia.perez@email.com', '2005-09-25', 6);
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0102030411', 'Pedro', 'Hernández', 'pedro.hernandez@email.com', '2007-02-14', 7);
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0102030412', 'Laura', 'Jiménez', 'laura.jimenez@email.com', '2006-12-05', 8);
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0102030413', 'Diego', 'Morales', 'diego.morales@email.com', '2005-08-08', 9);
insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0102030414', 'Elena', 'Contreras', 'elena.contreras@email.com', '2007-04-20', 10);

