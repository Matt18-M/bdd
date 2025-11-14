--script 2
create table cuentas (
numero_cuenta char(5) not null,
cedula_primaria char(5) not null,
fecha_creacion date not null,
saldo money not null,
constraint cuentas_pk primary key (numero_cuenta)
)

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01201,05801,'30/01/2015','560,30')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01202,05802,'15/05/2012','1540,30')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01203,05803,'27/06/2011','1260,50')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01204,05804,'20/12/2020','678,32')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01205,05805,'01/04/2013','400,50')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01206,05806,'17/11/2025','60,30')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01207,05807,'12/12/2020','760,30')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01208,05808,'23/03/2017','320,13')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01209,05809,'07/01/2014','1610,30')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01210,05810,'10/10/2010','1000,10')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01211,05811,'10/10/2025','1034,10')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01212,17811,'10/10/2024','1034,10')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01213,10811,'10/10/2024','1034,10')

insert into cuentas (numero_cuenta,cedula_primaria,fecha_creacion,saldo)
values (01214,10811,'10/10/2024','1034,10')


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
