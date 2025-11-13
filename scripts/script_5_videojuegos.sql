--script 5
create table videojuegos(
codigo int not null,
nombre varchar (100) not null,
descripcion varchar(100),
valoracion int,
constraint script5_pk primary key(codigo)
)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values(016001,'Spiderman','Juego de superheroe',5)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values(016002,'Read Redeption 2','Juego de la antiguedad',5)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values(016003,'GT V','Juego mundo abierto',4.5)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values(016004,'Tetris','Juego Retro',5)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values(016005,'Pac-Man','Juego retro',5)

insert into videojuegos (codigo,nombre)
values(016006,'FIFA 25')

insert into videojuegos (codigo,nombre)
values(016007,'Mario Bros')

insert into videojuegos (codigo,nombre)
values(016008,'Pokemon')

select * from videojuegos