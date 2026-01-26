drop table if exists tipo_documentos;
create table tipo_documentos(
codigo char not null,
descripcion varchar(100) not null,
constraint tipo_documentos_pk primary key(codigo)
)