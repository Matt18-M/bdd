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

select * from registros_entrada