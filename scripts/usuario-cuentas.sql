select * from cuentas

create table usuario(
	cedula char(5),
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal (10,5),

	constraint usuario_pk primary key (cedula)
)

alter table cuentas
add constraint cuentas_usuario_fk 
foreign key (cedula_primaria)
references usuario(cedula)


--10 insert nuevos
insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('10001', 'ana', 'garcía', 'ahorros', 5000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('10002', 'carlos', 'rodríguez', 'corriente', 100);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('10003', 'maría', 'lópez', 'ahorros', 7544);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('10004', 'juan', 'martínez', 'corriente', 1500);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('10005', 'laura', 'pérez', 'ahorros', 300);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('10006', 'pedro', 'sánchez', 'corriente', 2000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('10007', 'sofía', 'gonzález', 'ahorros', 600);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('10008', 'diego', 'fernández', 'corriente', 1200);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('10009', 'elena', 'ramírez', 'ahorros', 400);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('10010', 'miguel', 'torres', 'corriente', 180);

--datos de cuentas

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('35801', 'roberto', 'mendoza', 'ahorros', 5000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('45802', 'andrés', 'vargas', 'corriente', 10000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('55803', 'carmen', 'silva', 'ahorros', 7500);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('65804', 'javier', 'ortega', 'corriente', 15000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('65805', 'patricia', 'castro', 'ahorros', 3000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('65806', 'ricardo', 'rojas', 'corriente', 20000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('65807', 'isabel', 'navarro', 'ahorros', 6000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('65808', 'fernando', 'guerrero', 'corriente', 12000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('65809', 'adriana', 'peña', 'ahorros', 4000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('65810', 'gabriel', 'acosta', 'corriente', 18000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('65811', 'rosa', 'campos', 'ahorros', 8000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('17811', 'alberto', 'salazar', 'corriente', 9000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('10811', 'teresa', 'medina', 'ahorros', 7000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('10821', 'roberto', 'aguilar', 'corriente', 11000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('17504', 'gloria', 'molina', 'ahorros', 25000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('17500', 'raúl', 'cruz', 'corriente', 30000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('17501', 'verónica', 'reyes', 'ahorros', 35000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('17508', 'oscar', 'herrera', 'corriente', 40000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('17509', 'natalia', 'díaz', 'ahorros', 45000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('17510', 'héctor', 'ruiz', 'corriente', 50000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('17507', 'lucía', 'flores', 'ahorros', 55000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('17515', 'sergio', 'gómez', 'corriente', 60000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('17512', 'claudia', 'romero', 'ahorros', 65000);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) 
values ('17503', 'mario', 'santos', 'corriente', 70000);
