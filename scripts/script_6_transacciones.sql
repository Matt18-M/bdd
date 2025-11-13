--script 6
create table transacciones(
codigo int not null,
numero_cuenta char (5) not null,
monto money not null,
tipo varchar (1) not null,
fecha date not null,
hora time not null,
constraint script6_pk primary key(codigo)
)

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(0001,'18801','50,40','D','10/11/2025','14:23')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0002, '18802', '300,00', 'C', '16/01/2024', '14:30')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0003, '45012', '1250,50', 'D', '17/01/2024', '11:45')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0004, '33025', '25,80', 'D', '18/01/2024', '16:20')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0005, '29018', '500,00', 'C', '19/01/2024', '10:00')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0006, '18801', '75,30', 'D', '20/01/2024', '20:15')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0007, '67033', '89,99', 'C', '21/01/2024', '13:40')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0008, '55042', '1999,99', 'D', '22/01/2024', '15:55')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0009, '18803', '45,25', 'D', '23/01/2024', '07:30')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(0010, '22001', '50,40', 'D', '15/01/2024', '09:15')

select * from transacciones