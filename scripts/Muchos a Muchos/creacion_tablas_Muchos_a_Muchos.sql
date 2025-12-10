--USUARIOS Y GRUPO
create table usuarios(
	id int ,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key (id)
)

create table grupo(
	id int,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint grupo_pk primary key(id)
)

create table usuario_grupo (
	us_id int not null,
	gr_id int not null,

	constraint usuarios_fk foreign key(us_id)
	references usuarios(id),

	constraint grupo_fk foreign key(gr_id)
	references grupo(id),

	constraint usuario_grupo_pk primary key (us_id,gr_id)
)


--HABITACIONES Y HUESPEDES
create table habitaciones(
	habitacion_numero int,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key (habitacion_numero)
)

select * from habitaciones

create table huespedes(
	id int,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key(id)
)

create table reservas(
	inicio_fecha date not null,
	fin_fecha date not null,
	habitaciones int not null,
	huespedes int not null,

	constraint habitaciones_fk foreign key(habitaciones)
	references habitaciones (habitacion_numero),

	constraint huespedes_fk foreign key(huespedes)
	references huespedes (id),

	constraint reservas_pk primary key (habitaciones,huespedes)
)


--PROYECTO_MUNICIPIO

create table ciudad(
id int,
nombre varchar (45) not null,
constraint ciudad_pk primary key(id)
)


create table municipio(
id int,
nombre varchar(45),
ciudad_id int,

constraint ciudad_municipio_fk foreign key(ciudad_id)
references ciudad (id),

constraint municipio_pk primary key (id)
)

create table proyecto(
id int,
proyecto varchar(50) not null,
monto money not null,
fecha_inicio date,
fecha_entrega date,
constraint proyecto_pk primary key(id)
)

create table proyecto_municipio(
proyecto_id int not null,
municipio_id int not null,

constraint proyecto_fk foreign key(proyecto_id)
references proyecto(id),

constraint municipio_fk foreign key(municipio_id)
references municipio(id),



constraint municipio_proyecto_pk primary key (proyecto_id,municipio_id)
)

