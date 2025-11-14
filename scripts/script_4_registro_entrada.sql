--script 4
create table registros_entrada(
codigo_registro int not null,
cedula_empleado char(10) not null,
fecha date not null,
hora time not null,
constraint script4_pk primary key(codigo_registro)
)

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068801,'0102556601','10/11/2025','07:45')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068802,'0102556602','10/11/2025','07:55')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068803,'0102556603','10/11/2025','07:34')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068804,'0102556604','10/11/2025','08:05')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068805,'0102556605','10/11/2025','07:58')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068806,'0102556606','10/11/2025','08:15')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068807,'0102556607','10/11/2025','07:20')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068808,'0102556608','10/11/2025','08:06')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068809,'0102556609','10/11/2025','07:59')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068810,'0102556610','10/11/2025','08:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068811,'0102556610','10/08/2025','08:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068812,'0102556610','10/08/2025','08:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068813,'0102556610','10/06/2025','08:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (068814,'0102556612','10/06/2025','08:00')

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12345, '1754416489', '18/06/2023', '7:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12359, '0812546328', '07/09/2008', '11:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12379, '1725785413', '02/08/2023', '10:00');

select * from registros_entrada

select cedula_empleado,fecha,hora from registros_entrada

select * from registros_entrada where hora between '7:00' and '14:00'

select * from registros_entrada where hora > '8:00'

update registros_entrada set cedula_empleado = '082345679' where fecha between '01/08/2025' and '31/08/2025'

delete from registros_entrada where extract(month from fecha)= 6

select * from registros_entrada 
where extract(month from fecha) = 9 or cedula_empleado like '17%'

select * from registros_entrada
where extract(month from fecha) = 8 
and cedula_empleado like '17%' 
and hora between '08:00' and '12:00' 

select * from registros_entrada
where extract(month from fecha) = 8 
and cedula_empleado like '17%' 
and hora between '08:00' and '12:00' 
or extract(month from fecha) = 9 
and cedula_empleado like '08%' 
and hora between '09:00' and '13:00' 
