--script 3
create table estudiantes(
cedula char(10) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
email varchar(50) not null,
fecha_nacimiento date not null,
constraint script3_pk primary key(cedula)
)
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038801,'Mateo','Molina','mateo@gmail.com','30/12/2002')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038802,'Dario','Morales','Dario@gmail.com','10/11/2001')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038803,'Roberto','Capa','robert@gmail.com','12/02/1995')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038804,'Nicole','Buele','nicole@gmail.com','21/05/1997')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038805,'Camila','Gomez','camila@gmail.com','04/07/2003')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038806,'Fraklin','Tapia','franklin@gmail.com','20/10/2010')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102038807,'Eduardo','Zhinin','Eduardo@gmail.com','02/12/2004')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (0102032808,'Martin','Gonzales','martin@gmail.com','23/06/2001')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1702035808,'Gaby','Gonzalez','gaby@gmail.com','23/06/2001')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1702038809,'Ana','Marta','ana@gmail.com','23/06/2001')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1702038805,'Ana','Marta','ana@gmail.com','23/06/2001')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476800,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1835432805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');


select * from estudiantes

select nombre,cedula from estudiantes

select nombre from estudiantes where cedula like '17%'

select nombre,apellido from estudiantes where nombre like 'A%'

update estudiantes set apellido='Hernandez' where cedula like '17%' 

select * from estudiantes where cedula like '%05'

delete from estudiantes where cedula like '%05'

select nombre,apellido from estudiantes
where nombre like 'M%' or apellido like '%z'

select nombre from estudiantes 
where cedula like '%32%' and cedula like '18%'

select nombre, apellido from estudiantes 
where cedula like '%06' or cedula like '17%'