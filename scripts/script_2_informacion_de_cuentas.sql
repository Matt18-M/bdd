--script 2

create table cuentas (
numero_cuenta char(5) not null,
cedula_primaria char(5) not null,
fecha_creacion date not null,
saldo money not null,
constraint cuentas_pk primary key (numero_cuenta)
)

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01201,35801,'30/01/2015','560,30');

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01202,45802,'15/05/2012','1540,30');

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01203,55803,'27/06/2011','1260,50');

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01204,65804,'20/12/2020','678,32');

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01205,65805,'01/04/2013','400,50');

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01206,65806,'17/11/2025','60,30');

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01207,65807,'12/12/2020','760,30');

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)

values (01208,65808,'23/03/2017','320,13');
insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01209,65809,'07/01/2014','1610,30');

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01210,65810,'10/10/2010','1000,10');

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01211,65811,'10/10/2025','1034,10');

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01212,17811,'10/10/2024','1034,10');

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01213,10811,'10/10/2024','1034,10');

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01214,10821,'10/10/2024','1034,10');


insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (25569,17504,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (25570,17500,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (25571,17501,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (25572,17508,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (25573,17509,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (25574,17510,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (25575,17507,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (25578,17503,'15/06/2017',4500);

select * from cuentas

select numero_cuenta,saldo from cuentas

select * from cuentas where fecha_creacion between '13/09/2025' and '13/11/2025'

select numero_cuenta,saldo from cuentas where fecha_creacion between '13/09/2025' and '13/11/2025'

update cuentas set saldo='10' where cedula_primaria like '17%' 

delete from cuentas where cedula_primaria like '10%'

select numero_cuenta,saldo from cuentas
where saldo > '100' and saldo < '1000'

select * from cuentas 
where fecha_creacion between '13/11/2024' and '13/11/2025'

select * from cuentas 
where saldo = '0' or cedula_primaria like '%2'

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0001', '10001', '2022-09-15', 250.75);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0002', '10002', '2022-10-20', 450.00);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0003', '10003', '2022-11-10', 875.25);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0004', '10004', '2022-12-05', 325.50);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0005', '10005', '2023-01-12', 150.00);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0006', '10006', '2023-02-18', 750.00);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0007', '10007', '2023-03-22', 925.50);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0008', '10008', '2023-04-30', 625.25);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0009', '10009', '2023-05-14', 475.75);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0010', '10010', '2023-06-08', 180.00);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0011', '10001', '2023-07-05', 550.00);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0012', '10003', '2023-08-21', 999.99);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0013', '10005', '2023-09-15', 350.25);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0014', '10007', '2023-09-20', 750.50);

insert into cuentas (numero_cuenta, cedula_primaria, fecha_creacion, saldo) 
values ('c0015', '10009', '2023-09-21', 100.00);