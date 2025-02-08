//Sergio Rolando Inestroza Amaya 20182002621
//Ejercicio 2
//Crea un programa que devuelva una lista con todos los elementos unicos de otra lista

void main()
{
  List<int> listainicial = [1, 2, 1, 2, 2, 2, 3, 4, 5, 3, 6, 2, 3, 7, 8, 1, 9, 10];
  List<int> listafinal = [];
  
  var frecuencia = <int, int>{}; //para ver las repeticiones de cada ditigo
  
  //Aqui cuento las repeticiones de cada digito en la lista inicial
  for (int digito in listainicial)
  {
    frecuencia[digito] = (frecuencia[digito] ?? 0) + 1;
  }
  
  // Aqui solo selecciono los digitos cuya frecuencia sea 1
  for (int digito in listainicial)
  {
    if (frecuencia[digito] == 1) {
      listafinal.add(digito);
    }
  }
  
  print("Lista inicial:  $listainicial");
  print("Lista final: $listafinal");
}