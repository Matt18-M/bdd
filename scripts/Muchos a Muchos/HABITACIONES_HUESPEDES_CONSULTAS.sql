--HABITACIONES Y HUESPEDES
--Consulta
select h.habitacion_numero, 
       hu.nombres, 
       hu.apellidos
from habitaciones h, reservas r, huespedes hu
where h.habitacion_numero = r.habitaciones
and hu.id = r.huespedes;

--Subconsulta
select nombres, apellidos
from huespedes
where id in (
    select huespedes
    from reservas
    where habitaciones = 2
);

--Funcion de agregacion
select h.habitacion_numero, count(r.huespedes) as cantidad_huespedes
from habitaciones h, reservas r
where h.habitacion_numero = r.habitaciones
group by h.habitacion_numero;

--Consulta 2
select h.habitacion_numero, 
       h.piso,
       hu.nombres,
       hu.apellidos
from habitaciones h, reservas r, huespedes hu
where h.habitacion_numero = r.habitaciones
and hu.id = r.huespedes
and h.piso = 4;

--Subconsulta 2
select nombres, apellidos
from huespedes
where id in (
    select huespedes
    from reservas
    where habitaciones = 3
);

--Funcion de agregacion 2
select h.habitacion_numero, avg(r.huespedes) as promedio_huesped_id
from habitaciones h, reservas r
where h.habitacion_numero = r.habitaciones
group by h.habitacion_numero;

--Consulta 3
select h.habitacion_numero, hu.nombres, hu.apellidos
from habitaciones h, reservas r, huespedes hu
where h.habitacion_numero = r.habitaciones
and hu.id = r.huespedes;

--Subconsulta 3
select nombres, apellidos
from huespedes
where id in (
    select huespedes
    from reservas
    where habitaciones = 4
);

--Funcion de agregacion 3
select h.habitacion_numero, sum(h.precio_por_noche) as total_recaudado
from habitaciones h, reservas r
where h.habitacion_numero = r.habitaciones
group by h.habitacion_numero;
