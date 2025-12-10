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

--consulta obtener la cedula del empleado, fecha y el nombre de los empleados cuyo registro de entrada tiene fehca entre "2023-08-01 y 2023-08-31 o cuya cedula del empleado contiene un "17%" y l hora de entrada esta entre "08:00 y 12:00" o cuya fecha esta entre "2023-10-06 y 2023-10-20; la cedula del empleado contiene "08%" y la hora de entrada esta entre "09:00 y 13:00"
select 
    r.cedula_empleado,
    r.fecha,
    e.nombre,
    r.hora
from registros_entrada r, empleado e
where r.codigo_empleado = e.codigo_empleado
and (
    (r.fecha between '2023-08-01' and '2023-08-31')
    or 
    (r.cedula_empleado like '17%' and r.hora between '08:00' and '12:00')
    or 
    (r.fecha between '2023-10-06' and '2023-10-20' 
     and r.cedula_empleado like '08%' 
     and r.hora between '09:00' and '13:00')
);

--subconsulta obtener todos los datos de empleado deonde el codgo de registro del empleado corresponde al codigo de registro de entada de cedula "2201"
select *
from empleado
where codigo_empleado = (
    select codigo_empleado
    from registros_entrada
    where cedula_empleado = '2201'
);