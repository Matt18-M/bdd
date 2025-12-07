create table empleado(
codigo_empleado int not null,
nombre varchar(25) not null,
fecha date not null,
hora time not null,
constraint empleado_pk primary key (codigo_empleado)
)

alter table registros_entrada
add constraint registros_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado);

--insert
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (2201, 'Carlos García', '2023-08-15', '08:30');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (2202, 'Ana Rodríguez', '2023-09-10', '09:15');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (2203, 'Luis Fernández', '2023-08-20', '10:00');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (2204, 'María López', '2023-10-05', '08:45');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (2205, 'Pedro Martínez', '2023-11-12', '11:30');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (2206, 'Sofía Sánchez', '2023-09-25', '12:15');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (2207, 'Jorge Díaz', '2023-12-01', '09:00');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (2208, 'Elena Gómez', '2023-10-18', '10:45');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (2209, 'Diego Pérez', '2023-11-30', '08:20');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (2210, 'Laura Ramírez', '2023-12-15', '11:00');