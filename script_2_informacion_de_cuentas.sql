--script 2
create table cuentas_con_la_informacion (
numero_cuenta char(5) not null,
cedula_primaria char(5) not null,
fecha_creacion date not null,
saldo money not null,
constraint cuentas_pk primary key (numero_cuenta)
)