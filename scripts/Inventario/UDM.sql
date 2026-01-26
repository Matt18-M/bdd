drop table if exists categorias_UDM;
create table categorias_UDM(
codigo_categoria_udm char(1) not null,
nombre varchar(100) not null,
constraint categorias_UDM_pk primary key (codigo_categoria_udm)
)


drop table if exists UDM;
create table UDM(
codigo_udm char(2) not null,
descripcion varchar(100) not null,
categoria_udm char(2) not null,
constraint UDM_pk primary key (codigo_udm),
constraint UDM_fk foreign key (categoria_udm)
references categorias_UDM (codigo_categoria_udm)
)