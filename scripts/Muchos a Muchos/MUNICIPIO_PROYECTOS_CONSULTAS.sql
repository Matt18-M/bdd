--MUNICIPIO Y PROYECTO
--Consulta
select m.nombre as nombre_municipio, p.proyecto as nombre_proyecto
from municipio m, proyecto_municipio pm, proyecto p
where m.id = pm.municipio_id
and p.id = pm.proyecto_id;

--Subconsulta
select proyecto as nombre_proyecto
from proyecto
where id in (
    select proyecto_id
    from proyecto_municipio
    where municipio_id = 1
);

--Funcion de agregacion
select m.nombre as nombre_municipio, count(pm.proyecto_id) as cantidad_proyectos
from municipio m, proyecto_municipio pm
where m.id = pm.municipio_id
group by m.nombre;

--Consulta 2
select m.nombre as nombre_municipio, p.proyecto as nombre_proyecto
from municipio m, proyecto_municipio pm, proyecto p
where m.id = pm.municipio_id
and p.id = pm.proyecto_id
and m.nombre like '%GAD%';

--Subconsulta 2
select proyecto as nombre_proyecto
from proyecto
where id in (
    select proyecto_id
    from proyecto_municipio
    where municipio_id = 2
);

--Funcion de agregacion 2
select m.nombre as nombre_municipio, min(pm.proyecto_id) as minimo_proyecto_id
from municipio m, proyecto_municipio pm
where m.id = pm.municipio_id
group by m.nombre;

--Consulta 3
select m.nombre as nombre_municipio, c.nombre as nombre_ciudad
from municipio m, ciudad c
where m.ciudad_id = c.id;

--Subconsulta 3
select proyecto as nombre_proyecto
from proyecto
where id in (
    select proyecto_id
    from proyecto_municipio
    where municipio_id = 3
);

--Funcion de agregacion 3
select m.nombre as nombre_municipio, max(pm.proyecto_id) as maximo_proyecto_id
from municipio m, proyecto_municipio pm
where m.id = pm.municipio_id
group by m.nombre;
