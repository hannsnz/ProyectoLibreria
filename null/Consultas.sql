#Consultar Clientes
select * from clientes;

#Consultar almacenes
select * from almacenes;

#Consultar Libros
select * from libro;

select titulo, isbn, descripcion, existente
from libro,autores
where existente > 0; #mostrar libros que se pueden prestar

select titulo, isbn, descripcion, existente
from libro,autores
where existente > 0 and nombre='Carlito' and autor=autores.idAutor; #mostrar libros que se pueden prestar de cierto autor


#Consultar Ebook´s
select * from Ebook;

select titulo, isbn, descripcion, existente
from Ebook
where existente > 0;  #mostrar ebook que se pueden prestar

#Consultar Revistas
select * from revista;

select titulo, isbn, descripcion,existente
from revista
where existente > 0; #mostrar revistas que se pueden prestar

#Consultar Autores
select * from autores;

select nombre, titulo, isbn
from libro,
     autores
where idAutor = libro.autor; #Mostrar los libros de cada autor

#Vinculos
select * from libros;

#carrito
select *
from carrito;
