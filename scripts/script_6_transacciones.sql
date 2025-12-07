--script 6
create table transacciones(
codigo int not null,
numero_cuenta char (5) not null,
monto money not null,
tipo varchar (1) not null,
fecha date ,
hora time ,
constraint script6_pk primary key(codigo)
)

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(0001,'18801','50,40','D','10/11/2025','14:23');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0002, '18802', '300,00', 'C', '16/01/2024', '14:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0003, '45012', '1250,50', 'D', '17/01/2024', '11:45');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0004, '22002', '25,80', 'D', '26/05/2024', '16:20');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0005, '29018', '500,00', 'C', '19/01/2024', '10:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0006, '18801', '75,30', 'D', '20/01/2024', '20:15');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0007, '67033', '89,99', 'C', '21/01/2024', '13:40');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0008, '55042', '1999,99', 'D', '22/01/2024', '15:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0009, '18803', '45,25', 'D', '23/01/2024', '07:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0010, '22001', '50,40', 'D', '15/01/2024', '09:15');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0023, '22003', '450,40', 'C', '15/09/2024', '16:15');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0022, '22004', '150,40', 'D', '29/05/2025', '18:15');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0014, '22002', '350,40', 'C', '27/05/2025', '15:15');


insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32162, '22008', 1050, 'D', '25/5/2025', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transacciones(codigo, numero_cuenta, monto, tipo, hora)
values(23210, '32015', 400, 'C', '13:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');

select * from transacciones

select * from transacciones where tipo like 'D%'

select * from transacciones where monto between '200' and '2000'

select codigo,monto,tipo,fecha from transacciones where fecha is not null

update transacciones 
set tipo ='T' 
where monto > '100' and monto < '500'
and extract (month from fecha)=9
and hora between '14:00' and  '20:00' 

delete from transacciones 
where hora between '14:00' and '18:00'
and fecha between '01/08/2025' and '31/08/2025'

select * from transacciones 
where tipo = 'C' 
and numero_cuenta between '22001' and '22004'

select * from transacciones 
where tipo = 'D' and fecha = '25/05/25'
and numero_cuenta between '22007' and '22010'

select * from transacciones
where codigo between 1 and 5
and numero_cuenta = '22002' or numero_cuenta = '22004'
and fecha between '26/05/2025' and '29/05/2025'

