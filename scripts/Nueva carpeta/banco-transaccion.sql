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
values (201, 1, 'Depósito inicial');
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (202, 2, 'Retiro de efectivo');
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (203, 3, 'Depósito ahorros');
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (204, 4, 'Pago de préstamo');
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
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (1, 1110, 'Depósito inicial - Cuenta 22001');

--consulta obtener todas las transacciones de tipo "C" cuyo numero de cuenta este entre "22001 y 22004"
select t.*, b.detalle
from transacciones t, banco b
where t.codigo = b.codigo_transaccion
and t.tipo = 'C'
and t.numero_cuenta between '22001' and '22004';

--subconsulta obtener todos los datos de transacciones cuyo codigo corresponde al codigo de transaccion de banco 1
select *
from transacciones
where codigo = (
    select codigo_transaccion
    from banco
    where codigo_banco = 1
);
