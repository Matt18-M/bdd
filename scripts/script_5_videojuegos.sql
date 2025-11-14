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

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);


select * from videojuegos

select * from videojuegos where nombre like 'C%'

select * from videojuegos where valoracion between 9 and 10

select * from videojuegos where descripcion is null

update videojuegos set descripcion = 'Mejor Puntuado' where valoracion > 9

delete from videojuegos where valoracion < 7

select * from videojuegos
where nombre like '%c%' or valoracion = 7

select * from videojuegos
where codigo between 3 and 7 
or valoracion = 7

select * from videojuegos
where valoracion > 7 and nombre like 'C%'
or valoracion > 8 and nombre like 'D%'