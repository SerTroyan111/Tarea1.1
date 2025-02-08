//Sergio Rolando Inestroza Amaya
//Ejercicio 3
//Cree una clase Empleado que contenga las propiedades nombre, puesto y salario. Luego cree una lista de “empleados” 
//y una función que calcule el salario total de todos los empleados y otra que calcule el salario promedio.

void main()
{
  Empleado e1 = Empleado("Sergio", "Programador", 15000);
  Empleado e2 = Empleado("Maria", "Marketing", 20000);
  Empleado e3 = Empleado("Juan", "Inventario", 25000);
}

class Empleado
{
  late String nombre;
  late String puesto;
  late int salario;

  Empleado(String nombre, String puesto, int salario)
  {
    this.nombre = nombre;
    this.puesto = puesto;
    this.salario = salario;
  }
}

void sumassalarios(int salarios)
{
  int salarios;
}