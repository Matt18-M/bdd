create table personas(
    cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
	estado_civil_codigo varchar(1) not null,
    estatura decimal(10,2),
    fecha_nacimiento date not null,
    hora_nacimiento time,
    cantidad_ahorrada money,
    numero_hijos int,
	constraint personas_pk primary key (cedula)
);


create table estado_civil(
	codigo varchar(1) not null,
	descripcion varchar (50),
	constraint estado_civil_pk primary key (codigo) 
)


ALTER TABLE personas
ADD CONSTRAINT fk_personas_estado_civil
FOREIGN KEY (estado_civil_codigo)
REFERENCES estado_civil(codigo);

-- Insertar estados civiles
INSERT INTO estado_civil (codigo, descripcion) VALUES
('S', 'Soltero/a'),
('C', 'Casado/a'),
('D', 'Divorciado/a'),
('V', 'Viudo/a'),
('U', 'Unión libre');

INSERT INTO personas (cedula, nombre, apellido, estado_civil_codigo, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) VALUES
('0923456789', 'Juan', 'Pérez', 'C', 1.75, '1990-05-15', '08:30:00', 5000.00, 2),
('0912345678', 'María', 'Gómez', 'S', 1.65, '1995-08-22', '14:15:00', 3000.00, 0),
('0934567890', 'Carlos', 'Rodríguez', 'D', 1.80, '1985-03-10', '20:45:00', 7500.00, 1),
('0945678901', 'Ana', 'Martínez', 'V', 1.68, '1978-11-30', '06:00:00', 12000.00, 3),
('0956789012', 'Luis', 'Fernández', 'U', 1.72, '1992-07-18', '23:20:00', 2500.00, 0);

-- Consulta que une ambas tablas
SELECT 
    p.cedula,
    p.nombre || ' ' || p.apellido as nombre_completo,
    ec.descripcion as estado_civil,
    p.estatura,
    p.fecha_nacimiento
FROM personas p
INNER JOIN estado_civil ec ON p.estado_civil_codigo = ec.codigo
ORDER BY p.nombre;