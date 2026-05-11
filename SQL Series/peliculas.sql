create database peliculas;
use peliculas;

create table directores
(iddirector int primary key auto_increment,
nombre varchar(25),
edad int(2),
sueldo int(8)
);

create table plataformas
(
idplataforma int primary key auto_increment,
nombre varchar(25)
);

create table series
(
idserie int primary key auto_increment,
nombre varchar(25),
aniolanzamiento date,
genero varchar(25),
idplataforma int,
foreign key (idplataforma) references plataformas(idplataforma),
iddirector int,
foreign key (iddirector) references directores(iddirector)
);

create table temporadas
(
idetemporada int primary key auto_increment,
idserie int,
nombre varchar(25),
numero int(2),
descripcion varchar(50)
);

