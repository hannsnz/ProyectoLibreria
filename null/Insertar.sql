#Insertar Clientes.
insert into clientes (nombre, apellidoP, apellidoM,
                      dirCalle, dirNum, dirColonia, dirCP, dirCiudad,
                      correoElectronico, telefono) values (
                                                           'Luis Mario','Cervantes','Suarez',
                                                           'Francisco Orozco',20,'Revolucion',91100,'Xalapa',
                                                           'l.mario.cs31@gmail.com',2281155853
                                                          );

#insertar Almacenes.
insert into almacenes (dirCalle, dirNum, dirColonia, dirCP, dirCiudad,
                       correoAlmacen, telefono) values (
                                                        'Avila Camacho',23,'Centro',91200,'Xalapa',
                                                        'almacenAC@uv.libros.mx',2281155853
                                                       );
#Insertar Ebook´s
insert into Ebook (titulo, isbn,
                   fechaPublicacion, descripcion,
                   dispositivo, existente, so) values (
                                                       'Programacion Java',00001,
                                                       '2022-11-4','Ebook','Pc',10,'Android'
                                                      );
#Insertar libros
insert into libro (titulo, isbn, fechaPublicacion, descripcion, autor, existente, volumen)
values ('El mundo marino',00002,'2021-10-5','libro',1,10,1);

insert into libro (titulo, isbn, fechaPublicacion, descripcion, autor, existente, volumen)
values ('El mundo marino 2',00022,'2022-10-5','libro',1,8,2);

insert into libro (titulo, isbn, fechaPublicacion, descripcion, autor, existente, volumen)
values ('La historia de el mundo',00003,'2019-8-3','libro',2,5,1);

insert into libro (titulo, isbn, fechaPublicacion, descripcion, autor, existente, volumen)
values ('Las estrellas',00004,'2020-1-16','libro',3,15,1);

insert into libro (titulo, isbn, fechaPublicacion, descripcion, autor, existente, volumen)
values ('La ciencia del mar',00005,'2018-12-25','libro',1,3,1);

#Insertar Revistas
insert into revista (titulo, isbn, fechaPublicacion, descripcion, numeroEdicion, existente, volumen)
values ('Ciencias Politicas',00001,'2018-10-2','Revista',1,10,1);

insert into revista (titulo, isbn, fechaPublicacion, descripcion, numeroEdicion, existente, volumen)
values ('Los datos seguros',00002,'2018-8-2','Revista',1,24,1);

insert into revista (titulo, isbn, fechaPublicacion, descripcion, numeroEdicion, existente, volumen)
values ('Los datos seguros',00202,'2019-8-2','Revista',2,24,1);

insert into revista (titulo, isbn, fechaPublicacion, descripcion, numeroEdicion, existente, volumen)
values ('El cuerpo humano',00003,'2021-3-15','Revista',1,54,1);

#Vincular libros con Almacenes


#Insertar Autores
insert into autores (nombre, apellidoP, apellidoM, dirCalle, dirNum, dirColonia, dirCP, dirCiudad, correoAutor, telefono)
values ('Carlito','Ugarte','Reyes','Felipe IV',10,'Naranjal',91100,'Xalapa','autorCarlos@uv.mx',2281155853);

insert into autores (nombre, apellidoP, apellidoM, dirCalle, dirNum, dirColonia, dirCP, dirCiudad, correoAutor, telefono)
values ('Jordana','Saez','Arroyo','Miradores',17,'Moral',92100,'Banderilla','autorJordana@uv.mx',2281155851);

insert into autores (nombre, apellidoP, apellidoM, dirCalle, dirNum, dirColonia, dirCP, dirCiudad, correoAutor, telefono)
values ('Miguela','Marco','Rey','El coral',23,'Independientes',91450,'Xalapa','autorMiguela@uv.mx',2281155857);

