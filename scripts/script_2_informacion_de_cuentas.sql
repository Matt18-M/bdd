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

select * from cuentas
