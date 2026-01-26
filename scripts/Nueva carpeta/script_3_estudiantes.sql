--script 3
create table estudiantes(
cedula char(10) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
email varchar(50) not null,
fecha_nacimiento date not null,
constraint script3_pk primary key(cedula)
)

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

