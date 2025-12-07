create table prestamo(
    id_prestamo serial primary key,
    cedula char(10) not null,
    monto money not null,
    fecha_prestamo date not null,
    hora_prestamo time not null,
    garante varchar(40),
    constraint prestamo_persona_fk foreign key (cedula)
    references persona(cedula)
);

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('0102030401', 250.00, '2023-08-10', '10:30:00', 'Juan Pérez');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('0102030402', 750.50, '2023-08-15', '14:15:00', 'Carlos López');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('0102030403', 120.75, '2023-08-20', '09:45:00', 'Ana García');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('0102030404', 980.00, '2023-08-25', '16:20:00', 'Luis Fernández');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('0102030405', 350.25, '2023-09-01', '11:10:00', 'María Sánchez');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('0102030406', 650.80, '2023-09-05', '13:30:00', 'Pedro Martínez');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('0102030407', 1500.00, '2023-09-10', '15:45:00', 'Sofía Rodríguez');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('0102030408', 450.90, '2023-09-15', '10:25:00', 'Jorge Gómez');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('0102030409', 820.60, '2023-09-20', '12:50:00', 'Elena Díaz');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('0102030410', 280.40, '2023-09-25', '08:15:00', 'Laura Ramírez');