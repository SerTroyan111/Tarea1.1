//Sergio Rolando Inestroza Amaya
//Ejercicio 3
//Cree una clase Empleado que contenga las propiedades nombre, puesto y salario. Luego cree una lista de “empleados” 
//y una función que calcule el salario total de todos los empleados y otra que calcule el salario promedio.

void main()
{
  List<Empleado> empleados = 
  [
    Empleado(nombre: "Sergio", puesto: "Programador", salario: 13000.0),
    Empleado(nombre: "Juan", puesto: "Inventario", salario: 12500.0),
    Empleado(nombre: "David", puesto: "Contabilidad", salario: 12500.0),
  ];

  double salariostotales = calcularSalarioTotal(empleados);
  double salariopromedio = calcularSalarioPromedio(empleados);

  print("Salario total: ${salariostotales.toStringAsFixed(2)}"); //asfixed es para mostrar los valores tipo xx.xx
  print("Salario promedio: ${salariopromedio.toStringAsFixed(2)}");//asfixed es para mostrar los valores tipo xx.xx
}

class Empleado 
{
  String nombre;
  String puesto;
  double salario;

  Empleado
  ({
      required this.nombre,
      required this.puesto,
      required this.salario
  });
}

double calcularSalarioTotal(List<Empleado> empT)
{
  return empT.fold(0, (total, empleado) => total + empleado.salario);
}

double calcularSalarioPromedio(List<Empleado> empP)
{
  if (empP.isEmpty) return 0.0;
  return calcularSalarioTotal(empP) / empP.length;
}