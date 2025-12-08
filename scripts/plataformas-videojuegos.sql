create table plataformas(
id_plataforma int,
nombre_plataforma varchar(50) not null,
codigo_videojuego int,
constraint plataformas_pk primary key(id_plataforma)
)


alter table plataformas
add constraint plataformas_videojuegos_fk
foreign key (codigo_videojuego)
references videojuegos(codigo);


--inserts
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (11, 'PlayStation',63522);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (2, 'Xbox Series X',16002);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (3, 'PC', 16003);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (4, 'Nintendo Switch',16004);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (5, 'PlayStation 4',16005);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (6, 'Mobile',16009);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (7, 'PC',7563);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (8, 'Mobile',85421);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (9, 'PlayStation 5',15983);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (10, 'Nintendo Switch',35784);

--obtener el nombre,descripcion,valoracion y nombre de plataforma de videojuegos y plataforma cyua descripcion contiene "Guerra" y tiene una valoracion mayor a 7 o cuyo nombre comienza con "C" y tiene una valoracion mayor a 8 y comienza con "D"
select 
    v.nombre,
    v.descripcion,
    v.valoracion,
    p.nombre_plataforma
from videojuegos v, plataformas p
where v.codigo = p.codigo_videojuego
and (
    (v.descripcion ilike '%Guerra%' and v.valoracion > 7)
    or (v.nombre like 'C%' and v.valoracion > 8)
    or (v.nombre like 'D%')
);

--subconsulta obtener todos los datos de plataformas donde el codigo del videojuego corresponda al codigo "God of War"
select *
from plataformas
where codigo_videojuego in (
    select codigo
    from videojuegos
    where nombre = 'God of War'
);