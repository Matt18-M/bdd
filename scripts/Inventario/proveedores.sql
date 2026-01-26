drop table if exists proveedores;
create table proveedores(
identificador int not null,
tipo_documento char(2) not null,
nombre varchar(100),
telefono varchar(20),
correo varchar (100),
direccion varchar(100),
constraint proveedores_pk primary key(identificador),
constraint proveedores_fk foreign key (tipo_documento)
references tipo_documentos(codigo)
)

