create table persona(
    cedula char(10) primary key,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    estatura decimal(10,2),
    fecha_nacimiento date not null,
    hora_nacimiento time,
    cantidad_ahorrada money,
    numero_hijos int
);

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('0102030401', 'Sean', 'García', 1.75, '1990-05-15', '08:30:00', 5000.00, 2);

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('0102030402', 'María', 'Rodríguez', 1.65, '1985-08-22', '14:20:00', 3000.50, 1);

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('0102030403', 'Carlos', 'Sánchez', 1.80, '1992-03-10', '10:15:00', 1500.75, 0);

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('0102030404', 'Ana', 'Fernández', 1.68, '1988-11-30', '22:45:00', 2500.00, 3);

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('0102030405', 'Luis', 'Martínez', 1.77, '1995-07-04', '06:10:00', 1800.25, 1);

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('0102030406', 'Elena', 'Pérez', 1.62, '1982-09-18', '12:30:00', 4200.80, 2);

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('0102030407', 'Jorge', 'Gómez', 1.85, '1978-12-25', '18:00:00', 3500.00, 4);

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('0102030408', 'Sofía', 'López', 1.70, '1993-02-14', '09:45:00', 2800.50, 0);

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('0102030409', 'Pedro', 'Díaz', 1.79, '1980-06-08', '16:20:00', 1900.75, 2);

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('0102030410', 'Laura', 'Ramírez', 1.66, '1987-04-01', '07:50:00', 3100.00, 1);