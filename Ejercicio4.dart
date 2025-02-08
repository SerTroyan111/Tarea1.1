//Sergio Rolando Inestroza Amaya
//Ejercicio 4
//Cree una clase Libro con las propiedades titulo, autor, y anioPublicacion.
//Crea una clase Biblioteca que contenga una lista de libros y funciones para: 
//Agregar libros, Eliminar libros, Buscar libros por autor, Listar todos los libros ordenados por año de publicación.

void main()
{
  
}

class Libro
{
  String titulo;
  String autor;
  String anioPublicacion;

  Libro
  ({
    required this.titulo,
    required this.autor,
    required this.anioPublicacion
  });
}


class Biblioteca
{
  List <String> libros = [];
  void agregarlibro()
  {

  }

  void mostrarlibros()
  {
    //por anio de publicacion
  }
}