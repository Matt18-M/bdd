--count
select count (*) from productos
--min
select min(precio) from productos
--max 
select max(precio) from productos
--sum
select sum(cantidad) from ventas
--AVG
select AVG(cantidad) from ventas

--RELACION CUENTAS CON USUARIO
--FUNCION 1 -- el promedio de saldo de todas las cuentas de un usuario en especifico
--cedula 35801
select AVG(cast(saldo as numeric)) as saldo_promedio 
from cuentas
where cedula_primaria =  '35801';

--FUNCION 2 -- obtener el total de cuentas de cada tipo de cuenta.
select tipo_cuenta, count(*) as total_cuentas
from usuario
group by tipo_cuenta;

--RELACION DE CLIENTES CON COMPRAS
--FUNCION 1 -- obtener el monto total de compras realizadas por cada cliente
--cedula '0150560811'
select cedula, sum(monto) as monto_total_compras
from compras
where cedula = '0150560811'
group by cedula;

--FUNCION 2 -- obtener la cantidad total de compras realizadas en una fecha especifica
--fecha '2023-04-05'
select fecha_compra, count (*) as total_compras
from compras
where fecha_compra = '2023-04-05'
group by fecha_compra;

--RELACION ENTRE ESTUDIANTES Y PROFESORES
--FUNCION 1 -- obtener la cantidad total de estudiantes asignados a cada profesor
select codigo_profesor , count (*) as total_estudiantes
from estudiantes
group by codigo_profesor;

--FUNCION 2 -- obtener la edad promedio de los estudiantes
select round(AVG(extract(YEAR FROM CURRENT_DATE)-extract(YEAR FROM fecha_nacimiento))) as edad_promedio
from estudiantes;

--RELACION ENTRE PERSONA Y PRESTAMO
--FUNCION 1 --obtener la suma total de los montos de prestamos para cada persona
select cedula, SUM (monto) as monto_total_prestamo
from prestamo
group by cedula;

--FUNCION 2  -- obtener la cantidad total de personas que tienen mas de un hijo
select count(*) as total_personas
from persona
where numero_hijos > 1;

--RELACION ENTRE PRODUCTOS Y VENTAS
--FUNCION 1 -- obtener el maximo precio de todos los productos
select max(precio) as precio_maximo
from productos

--FUNCION 2 obtener la suma total de la cantidad de productos vendidos
select SUM (cantidad) as cantidad_total_vendida
from ventas

--RELACION ENTRE TRANSACCIONES Y BANCO
--FUNCION 1 -- obtener la cantidad total de transacciones de tipo "C"
select tipo, count(*) as total_transacciones_credito
from transacciones
where tipo = 'C'
group by tipo;

--FUNCION 2 obtener el promedio de montos de transacciones para cada numero de cuenta
select numero_cuenta, ROUND(AVG(CAST(monto as decimal)),2) as monto_promedio
from transacciones
group by numero_cuenta;

--RELACION ENTRE VIDEOJUEGOS Y PLATAFORMAS
--FUNCION 1 obtener la cantidad total de plataformas disponibles para cada videojuego
select codigo_videojuego, count (*) as total_plataformas
from plataformas
group by codigo_videojuego;

--FUNCION 2 obtener la valoracion promedio de todos ls videojuegos
select ROUND(AVG(valoracion),2) as valoracion_promedio
from videojuegos;


--RELACION ENTRE registros_entrada y empleado
--FUNCION 1 obtener la cantidad total de registros de entrada realizada por cada empleado
select codigo_empleado, count(*) as total_registros
from registros_entrada
group by codigo_empleado;

--FUNCION 2 obtener la fecha minima y maxima de los registros de entrada
select MIN(fecha) as fecha_minina,
MAX(fecha) as fecha_maxima
from registros_entrada;