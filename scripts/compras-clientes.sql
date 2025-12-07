create table compras(
id_compra int,
cedula char(10) not null,
fecha_compra date not null,
monto decimal (10,2) not null,

constraint compras_pk primary key (id_compra)
)

alter table compras
add constraint compras_clientes_fk 
foreign key (cedula)
references clientes (cedula)

--datos ya utilizados
insert into compras (id_compra, cedula, fecha_compra, monto)
values(11, '0150560811', '2023-01-15', 250.75);

insert into compras (id_compra, cedula, fecha_compra, monto)
values(22, '0150560822', '2023-02-20', 450.50);

insert into compras (id_compra, cedula, fecha_compra, monto)
values(33, '0150560833', '2023-03-10', 125.25);

insert into compras (id_compra, cedula, fecha_compra, monto)
values(44, '0150560844', '2023-04-05', 780.00);

insert into compras (id_compra, cedula, fecha_compra, monto)
values(55, '0150560855', '2023-05-12', 320.50);

insert into compras (id_compra, cedula, fecha_compra, monto)
values(66, '0150560866', '2023-06-18', 950.75);

insert into compras (id_compra, cedula, fecha_compra, monto)
values(77, '0150560877', '2023-07-22', 150.25);

insert into compras (id_compra, cedula, fecha_compra, monto)
values(88, '0150560811', '2023-08-30', 625.00);

insert into compras (id_compra, cedula, fecha_compra, monto)
values(99, '0150560822', '2023-09-14', 425.50);

insert into compras (id_compra, cedula, fecha_compra, monto)
values(17, '0150560833', '2023-10-08', 880.25);

--10 inserts
insert into compras (id_compra, cedula, fecha_compra, monto)
values(221, '0150560877', '2023-02-20', 450.50);
insert into compras (id_compra, cedula, fecha_compra, monto)
values(331, '0150560711', '2023-03-10', 125.25);
insert into compras (id_compra, cedula, fecha_compra, monto)
values(441, '0150560722', '2023-04-05', 320.00);
insert into compras (id_compra, cedula, fecha_compra, monto)
values(551, '0150560733', '2023-05-12', 275.80);
insert into compras (id_compra, cedula, fecha_compra, monto)
values(661, '0150560744', '2023-06-18', 180.40);
insert into compras (id_compra, cedula, fecha_compra, monto)
values(771, '0150560877', '2023-07-22', 150.25);
insert into compras (id_compra, cedula, fecha_compra, monto)
values(881, '0150560766', '2023-08-30', 210.90);
insert into compras (id_compra, cedula, fecha_compra, monto)
values(991, '0150560777', '2023-09-14', 340.60);
insert into compras (id_compra, cedula, fecha_compra, monto)
values(1001, '0150560788', '2023-10-05', 95.75);
insert into compras (id_compra, cedula, fecha_compra, monto)
values(1011, '0150560221', '2023-10-05', 95.75);
