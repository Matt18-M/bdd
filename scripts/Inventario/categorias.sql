drop table if exists categorias;
create table categorias(
codigo_cat serial not null,
nombre varchar(100) not null,
categoria_padre int,
constraint categorias_pk primary key (codigo_cat),
constraint categorias_fk foreign key (categoria_padre)
references categorias(codigo_cat)
)
