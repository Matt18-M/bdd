--script 5
create table videojuegos(
codigo int not null,
nombre varchar (100) not null,
descripcion varchar(100),
valoracion int,
constraint script5_pk primary key(codigo)
)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values(016001,'Spiderman','Juego de superheroe',8)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values(016002,'Read Redeption 2','Juego de la antiguedad',10)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values(016003,'GT V','Juego mundo abierto',6.5)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values(016004,'Tetris','Juego Retro',7)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values(016005,'Pac-Man','Juego retro',5)

insert into videojuegos (codigo,nombre)
values(016006,'FIFA 25')

insert into videojuegos (codigo,nombre)
values(016007,'Mario Bros')

insert into videojuegos (codigo,nombre)
values(016008,'Pokemon')

insert into videojuegos (codigo,nombre)
values(016009,'Candy Crush')

insert into videojuegos (codigo,nombre,valoracion)
values(016010,'Minecraft',9)

insert into videojuegos (codigo,nombre,valoracion)
values(016011,'COD',10)

select * from videojuegos

select * from videojuegos where nombre like 'C%'

select * from videojuegos where valoracion between 9 and 10

select * from videojuegos where descripcion is null

update videojuegos set descripcion = 'Mejor Puntuado' where valoracion > 9

select * from videojuegos

delete from videojuegos where valoracion < 7
