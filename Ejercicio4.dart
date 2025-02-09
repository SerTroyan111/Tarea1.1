//Sergio Rolando Inestroza Amaya
//Ejercicio 4
//Cree una clase Libro con las propiedades titulo, autor, y anioPublicacion.
//Crea una clase Biblioteca que contenga una lista de libros y funciones para: 
//Agregar libros, Eliminar libros, Buscar libros por autor, Listar todos los libros ordenados por año de publicación.

void main() 
{
  Biblioteca biblioteca = Biblioteca();

  biblioteca.agregar(Libro(titulo: "Harry Potter y el misterio del principe", autor: "JK Rowling", anioPublicacion: 2005));
  biblioteca.agregar(Libro(titulo: "Percy Jackson y el ladron del rayo", autor: "Rick Riordan", anioPublicacion: 2005));
  biblioteca.agregar(Libro(titulo: "Percy Jackson: El último héroe del Olimpo", autor: "Rick Riordan", anioPublicacion: 2009));

  biblioteca.eliminarLibro("Percy Jackson y el ladron del rayo");
  // biblioteca.eliminarLibro("Animales fantasticos y donde encontrarlos");

  biblioteca.buscarPorAutor("JK Rowling");
  // biblioteca.buscarPorAutor("Alvaro Mutis");

  biblioteca.listarLibrosOrdenados();
}

class Libro
{
  String titulo;
  String autor;
  int anioPublicacion;

  Libro
  ({
    required this.titulo,
    required this.autor,
    required this.anioPublicacion
  });
}


class Biblioteca
{
  List <Libro> libros = [];
  
  //agrega cada libro que le pasemos
  void agregar(Libro libro)
  {
    libros.add(libro);
    print('Libro agregado');
  }

  //eliminar el libro segun el titulo que le pasemos
  void eliminarLibro(String titulo) 
  {
    for (int i = 0; i < libros.length; i++) 
    {
      if (libros[i].titulo == titulo)
      {
        libros.removeAt(i);
        print('Libro "$titulo" ha sido eliminado.');
        return;
      }
    }
    print('El libro "$titulo" no existe en esta biblioteca');
  }

  //busca un libro dependiendo del autor que le pasemos
  void buscarPorAutor(String autor)
  {
    bool encontrado = false;
    for (var libro in libros)
    {
      if (libro.autor == autor)
      {
        print('Título: ${libro.titulo}, Año de publicación: ${libro.anioPublicacion}');
        encontrado = true;
      }
    }
    if (!encontrado)
    {
      print('El autor proporcionado no tiene libros');
    }
  }

  // mostrar libros por año de publicacion ascendente
  void listarLibrosOrdenados()
  {
    libros.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    print('Libros ordenados por año de publicación: ');
    for (var libro in libros)
    {
      print('Título: ${libro.titulo}, Autor: ${libro.autor}, Año de publicación: ${libro.anioPublicacion}');
    }
  }
}