--agregacion
--operaciones sobre un conjunto de resultados

--count --cuenta la cantidad que hay de la columna
select count (nombre) 
from productos

--AVG se saca el promedio
--cast(se coloca a que lo quieres convertir)
select AVG(cast(cantidad_ahorrada as numeric)) from persona

--MAX maximo --MIN minimo --SUM suma
select MAX(cast(cantidad_ahorrada as numeric)) from persona

select SUM(cast(cantidad_ahorrada as numeric)) from persona

--group by --agrupa 
select estado_civil_codigo, count (*) from persona
group by estado_civil_codigo