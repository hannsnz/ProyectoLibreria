create database bibliotecaUV;
use bibliotecaUV;
#tablas
create table clientes(
    nombre varchar(60) not null ,
    apellidoP varchar(60) not null ,
    apellidoM varchar(60) not null ,
    dirCalle varchar(150) not null ,
    dirNum int not null ,
    dirColonia varchar(150) not null ,
    dirCP int not null ,
    dirCiudad varchar(150) not null ,
    correoElectronico varchar(220),
    telefono bigint not null ,
    idCliente int not null auto_increment primary key
);

create table almacenes(
    idAlmacen int not null  auto_increment primary key ,
    dirCalle varchar(150) not null ,
    dirNum int not null ,
    dirColonia varchar(150) not null ,
    dirCP int not null ,
    dirCiudad varchar(150) not null ,
    correoAlmacen varchar(220) not null ,
    telefono bigint not null
);

create table autores(
    idAutor int not null  auto_increment,
    nombre varchar(60) not null,
    apellidoP varchar(60) not null ,
    apellidoM varchar(60) not null ,
    dirCalle varchar(150) not null ,
    dirNum int not null ,
    dirColonia varchar(150) not null ,
    dirCP int not null ,
    dirCiudad varchar(150) not null ,
    correoAutor varchar(220) not null,
    telefono bigint not null ,
    primary key (idAutor)
);

create table libro (
    id int not null auto_increment,
    titulo varchar(100) not null ,
    isbn int not null unique ,
    fechaPublicacion date not null ,
    descripcion enum('Libro') not null ,
    autor int not null ,
    existente int not null ,
    volumen int not null,
    primary key (id),
    foreign key (autor) references autores(idAutor)
);

create table revista (
    id int not null auto_increment,
    titulo varchar(100) not null ,
    isbn int not null unique ,
    fechaPublicacion date not null ,
    descripcion enum('Revista') not null ,
    numeroEdicion int not null ,
    existente int not null ,
    volumen int not null,
    primary key (id)
);

create table Ebook (
    id int not null auto_increment,
    titulo varchar(100) not null ,
    isbn int not null unique ,
    fechaPublicacion date not null ,
    descripcion enum('Ebook') not null ,
    dispositivo enum('Movil' , 'Tablet','Pc') ,
    existente int not null ,
    primary key (id),
    so enum('Android' , 'IOS')
);

create table libros (
    idAlmacen int not null ,
    idLibro int  ,
    idRevista int  ,
    idEbook int,
    foreign key (idAlmacen) references almacenes(idAlmacen),
    foreign key (idLibro) references libro(id),
    foreign key (idRevista) references revista(id),
    foreign key (idEbook) references Ebook(id)
);

create table carrito(
                          idCarrito int not null auto_increment primary key ,
                          fechaCompra date not null ,
                          ejemplar varchar(150) not null ,
                          ejemplares int not null ,
                          cliente int not null ,
                          foreign key (cliente) references clientes(idCliente)
  );
