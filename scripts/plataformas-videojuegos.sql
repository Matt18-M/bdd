create table plataformas(
id_plataforma int,
nombre_plataforma varchar(50) not null,
codigo_videojuego int,
constraint plataformas_pk primary key(id_plataforma)
)


alter table plataformas
add constraint plataformas_videojuegos_fk
foreign key (codigo_videojuego)
references videojuegos(codigo);


--inserts
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (1, 'PlayStation',16001);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (2, 'Xbox Series X',16002);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (3, 'PC', 16003);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (4, 'Nintendo Switch',16004);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (5, 'PlayStation 4',16005);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (6, 'Mobile',16009);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (7, 'PC',7563);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (8, 'Mobile',85421);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (9, 'PlayStation 5',15983);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (10, 'Nintendo Switch',35784);





