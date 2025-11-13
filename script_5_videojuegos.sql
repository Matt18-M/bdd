--script 5
create table videojuegos(
codigo int not null,
nombre varchar (100) not null,
descripcion varchar(100),
valoracion int,
constraint script5_pk primary key(codigo)
)