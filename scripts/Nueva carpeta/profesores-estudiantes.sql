create table colegio(
    id_colegio int primary key,
    nombre varchar(100) not null,
    direccion varchar(200),
    telefono varchar(15)
)

create table profesores(
codigo int,
nombre varchar(50) not null,
constraint profesores_pk primary key (codigo)
)


alter table estudiantes
add constraint estudiantes_profesores_fk
foreign key (codigo_profesor)
references profesores(codigo)


--insert
insert into profesores (codigo, nombre) 
values (1, 'Francisco');
insert into profesores (codigo, nombre) 
values (2, 'María');
insert into profesores (codigo, nombre) 
values (3, 'Carlos');
insert into profesores (codigo, nombre) 
values (4, 'Ana');
insert into profesores (codigo, nombre) 
values (5, 'Luis');
insert into profesores (codigo, nombre) 
values (6, 'Elena');
insert into profesores (codigo, nombre) 
values (7, 'Jorge');
insert into profesores (codigo, nombre) 
values (8, 'Sofía');
insert into profesores (codigo, nombre) 
values (9, 'Pedro');
insert into profesores (codigo, nombre) 
values (10, 'Laura');

--consulta obtener el codigo del profesor con todos los nombres y apellidos de los estudiantes cuyo apellido contenga una "n"
select p.codigo as codigo_profesor,
       e.nombre as nombre_estudiante,
       e.apellido as apellido_estudiante
from profesores p, estudiantes e
where p.codigo = e.codigo_profesor
and e.apellido like '%n%';

--subconsulta obtener todos los estudiantes cuyo codigo de profesor corresponda al nombre de "Francisco"
select e.*
from estudiantes e
where e.codigo_profesor = (
    select codigo 
    from profesores 
    where nombre = 'Francisco'
);