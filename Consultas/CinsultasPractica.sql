use proyectodb;
#INSERTAR DATOS A AUTOR, LIBRO, USUARIO, ALMACEN
insert into autor(nombre,apellidoP,apellidoM,dirCall,dirNum,dirCiudad,dirCP,correo) values ('daniel', 'Tinoco','Baldo','las flores',25,'Xalapa',91100,'danielito1313@gamail.com');
insert into libro (titulo,ISBN,fechaPublicacion,descripcion,ejemplares,idAutorL) VALUES ('A la caza del hacker',74801,'2002-04-05', 'libro donde se relaciona la avnetura con la tecnologia',5,1);
insert into usuario (nombre, apellidoP,apellidoM,dirCall,dirNum,dirLoc,dirProv,correo,clave) values ('Mario','cervantes','suarez', 'Matamoros',56,'Xalapa','xalapa','mariocv@gmail.com','274');


#MOSTRAR NOMBRE, APELLIDO PATERNO Y MATERNO, ID, CORREO DE AUTOR
select nombre, apellidoP, apellidoM,idAutor,correo from autor; 

#MOSTRAR NOMBRE, APELLIDO PATERNO Y MATERNO, ID, CORREO DE USUARIO

#MOSTRAR TODOS LOS DATOS DE ALMACEN

#MOSTRAR TODOS LOS DATOS DE LIBRO