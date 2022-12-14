#crear la base de datos
create database proyectoDB;
use proyectoDB;

#crear las tablas
create table usuario(
  idUsr int auto_increment not null , #se incrementa por nuevo usuario
  nombre varchar(50) not null ,
  apellidoP varchar(50) not null ,
  apellidoM varchar(50) not null ,
  dirCall varchar(100) not null ,
  dirNum int not null ,
  dirLoc varchar(50) not null ,
  dirProv varchar(50) not null,
  correo varchar(220) not null ,
  clave varchar(100) not null ,
  primary key (idUsr)
);

create table admin (
    idAdmin int not null ,
    primary key (idAdmin),
    foreign key (idAdmin) references usuario(idUsr)
);

create table autor(
    idAutor int not null auto_increment,
    nombre varchar(50) not null ,
    apellidoP varchar(50) not null ,
    apellidoM varchar(50) not null ,
    dirCall varchar(100) not null ,
    dirNum int not null ,
    dirCiudad varchar(50) not null ,
    dirCP int not null ,
    correo varchar(220) not null ,
    primary key (idAutor)
);

create table Libro(
    idLibro int auto_increment not null ,
    titulo varchar(60) not null ,
    ISBN int unique not null ,
    fechaPublicacion date not null ,
    descripcion varchar(250) not null ,
    ejemplares int not null ,
    idAutorL int,
    primary key (idLibro),
    foreign key (idAutorL) references autor(idAutor)
);
create table Revista(
    idRevista int auto_increment not null,
    titulo varchar (60) not null,
    ISBN int unique not null,
    fechaPublicacion date not null,
    Descripcion varchar (250),
    numero int not null,
    volumen int not null,
    cantidad int not null ,
    primary key (idRevista)
);

create table Ebook (
    idEbook int auto_increment not null,
    titulo varchar (60) not null,
    ISBN int unique not null,
    fechaPublicacion date not null,
    descripcion varchar(250) not null,
    idAutorE int,
    dipositivo varchar(100) not null ,
    cantidad int not null ,
    primary key (idEbook),
    foreign key (idAutorE) references autor(idAutor)
);

create table Almacen (
	idAlmacen int auto_increment not null,
	dirCalle varchar (250) not null,
	dirNumero int not null,
	dirColonia varchar (250) not null,
	dirCP INT not null,
	dirCiudad varchar (250) not null,
	mail varchar (200) not null,
	telefono int not null,
	campus varchar (60) not null,
	primary key (idAlmacen)
);

create table guardarLibro(
    idA int,
    idL int,
    cantidad int,
    foreign key (idA) references almacen(idAlmacen),
    foreign key (idL) references libro(idLibro)
);

create table guardarEbook(
    idA int,
    idE int,
    cantidad int,
    foreign key (idA) references almacen(idAlmacen),
    foreign key (idE) references ebook(idEbook)
);

create table guardarRevista(
    idA int,
    idR int,
    cantidad int,
    foreign key (idA) references almacen(idAlmacen),
    foreign key (idR) references revista(idRevista)
);

create table Carrito(
	idCarrito int auto_increment not null,
	fechadecompra date not null,
	nombreLibros varchar (225),
	cantidadDelLibro int not null,
	primary key (idCarrito)
);

insert into guardarLibro (idA, idL, cantidad) values (3,3,12);

select idLibro,titulo,ejemplares from libro;

select titulo,cantidad,nombre from libro,guardarLibro,autor where idLibro=idL and idAutorL=autor.idAutor;

(select idAutor from autor) union (select idAutorL from libro);

select idLibro from libro where idLibro not in (select idL from guardarLibro);

select idLibro,titulo from libro where idLibro in (select idL from guardarLibro);

select idUsr,nombre,correo,clave from usuario where idUsr in (select idAdmin from admin);

select titulo from libro inner join autor a on a.idAutor = Libro.idAutorL;

select nombre,apellidoP,apellidoM
from usuario inner join admin a on usuario.idUsr = a.idAdmin;

select titulo from libro;

select titulo, nombre,cantidad, apellidoP, idLibro, campus
from libro,
     autor,
     guardarLibro,
     almacen
where idL = idLibro
  and idAlmacen = idA
  and idAutorL = autor.idAutor
  and campus = 'Redes y Servicios' and cantidad >= 12 and titulo='Ingles basico';


select titulo,campus from libro,almacen,guardarLibro where idAlmacen=idA and idLibro=idL;

#ver el libro junto con su autor
select titulo, nombre,apellidoP,apellidoM from libro,autor where idAutorL = idAutor;

#ver cuantos usuarios son de cada localidad
select dirLoc, count(dirLoc) from usuario group by dirLoc;

#ver todos los libros y todos los ebooks
(select titulo from libro) union (select titulo from ebook);

#ver los que son impresos y no son digitales
select titulo as Libros from libro where titulo not in (select titulo from ebook);
select * from libro;
select titulo as Libros from libro where titulo in (select titulo from ebook);
select * from libro;

#todos los libros que en su descripcion tengan la palabra prog
select titulo,descripcion from libro where instr(descripcion,'prog');
select titulo,descripcion from libro where descripcion like 'prog';
select titulo,descripcion from libro;

