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

select correo,clave
from usuario;

create table admin (
    idAdmin int not null ,
    primary key (idAdmin),
    foreign key (idAdmin) references usuario(idUsr)
);


select idAdmin from admin,usuario where correo = 'admin@proyecto.uv' and clave = 'root' and idAdmin = usuario.idUsr;

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
    primary key (idRevista)
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
create table Carrito(
idCarrito int auto_increment not null,
fechadecompra date not null,
nombreLibros varchar (225),
cantidadDelLibro int not null,
primary key (idCarrito)
);









