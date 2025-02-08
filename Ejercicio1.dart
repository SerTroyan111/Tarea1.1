//Sergio Rolando Inestroza Amaya 20182002621
//Ejercicio 1
//Crea un programa el cual imprima una lista con los primeros 15 numeros de la sucesion Fibonacci

void main()
{
  int num1 = 0, num2 = 1, num3 = 0;
  final int maximo = 14;
  print(num1);
  print(num2);
  for(int i = 2; i <= maximo; i++)
  {
    num3 = num1 + num2;
    print(num3);

    num1 = num2;
    num2 = num3;
  }
}