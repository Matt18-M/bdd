--USUARIOS Y GRUPO
--Consulta
select u.nombre as nombre_usuario, g.nombre as nombre_grupo
from usuarios u, usuario_grupo ug, grupo g
where u.id = ug.us_id
and g.id = ug.gr_id;

--Subconsulta
select nombre as nombre_usuario
from usuarios
where id in (
    select us_id
    from usuario_grupo
    where gr_id = 1
);

--Funcion de agregacion
select g.nombre as nombre_grupo, count(ug.us_id) as cantidad_usuarios
from grupo g, usuario_grupo ug
where g.id = ug.gr_id
group by g.nombre;

--Consulta 2
select u.nombre as nombre_usuario, g.nombre as nombre_grupo
from usuarios u, usuario_grupo ug, grupo g
where u.id = ug.us_id
and g.id = ug.gr_id
and g.nombre like '%intensivo%';

--Subconsulta 2
select nombre as nombre_usuario
from usuarios
where id in (
    select us_id
    from usuario_grupo
    where gr_id = 2
);

--Funcion de agregacion 2
select g.nombre as nombre_grupo, 
       max(ug.us_id) as max_usuario_id,
       min(ug.us_id) as min_usuario_id
from grupo g, usuario_grupo ug
where g.id = ug.gr_id
group by g.nombre;

--Consulta 3
select u.nombre as nombre_usuario, g.fecha_creacion
from usuarios u, usuario_grupo ug, grupo g
where u.id = ug.us_id
and g.id = ug.gr_id
and g.fecha_creacion between '2020-03-08' and '2022-03-08';

--Subconsulta 3
select nombre as nombre_usuario
from usuarios
where id in (
    select us_id
    from usuario_grupo
    where gr_id = 3
);

--Funcion de agregacion 3
select g.descripcion, count(ug.us_id) as cantidad_usuarios
from grupo g, usuario_grupo ug
where g.id = ug.gr_id
and g.descripcion like '%matutino%'
group by g.descripcion;
