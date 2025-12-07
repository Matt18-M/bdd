create table banco(
codigo_banco int,
codigo_transaccion int,
detalle varchar(100),
constraint banco_pk primary key(codigo_banco)
)

alter table banco
add constraint banco_transacciones_fk 
foreign key (codigo_transaccion) 
references transacciones(codigo);

--insert
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (101, 1, 'Depósito inicial');
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (102, 2, 'Retiro de efectivo');
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (103, 3, 'Depósito ahorros');
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (104, 4, 'Pago de préstamo');
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (105, 5, 'Transferencia enviada');
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (106, 6, 'Depósito nómina');
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (107, 7, 'Retiro cajero automático');
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (108, 8, 'Depósito por venta');
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (109, 9, 'Pago de servicio');
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (110, 10, 'Depósito extra');