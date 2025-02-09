//Sergio Rolando Inestroza Amaya 20182002621
//Ejercicio 5
//Cree una clase CuentaBancaria que tenga las propiedades titular y saldo.
//Implemente métodos para: Depositar dinero, Retirar dinero (asegurándote de que el saldo no sea negativo) y Consultar el saldo.

void main()
{
  CuentaBancaria cc = CuentaBancaria(titular: "Sergio Inestroza", saldo: 1000);

  cc.consusaldo();

  cc.depositar(500);

  cc.retirar(200);

  cc.retirar(1500);

  cc.consusaldo();
}

class CuentaBancaria
{
  String titular;
  int saldo;

  CuentaBancaria
  ({
    required this.titular,
    required this.saldo,
  });

  //deposita la cantidad de dinero que le pasemos como parametro
  void depositar(int cantidad)
  {
    if (cantidad > 0)
    {
      saldo += cantidad;
      print('Dinero depositado exitosamente. Saldo actual: ${saldo.toStringAsFixed(2)}');
    }
    else
    {
      print('El dinero a depositar no debe ser menor o igual a 0');
    }
  }

  void retirar(int cantidad)
  {
    if (cantidad <= saldo && cantidad > 0)
    {
      saldo = saldo - cantidad;
      print('Dinero retirado exitosamente. Saldo actual: ${saldo.toStringAsFixed(2)}');
    } 
    else if (cantidad > saldo)
    {
      print('Fondos insuficientes. Saldo actual: ${saldo.toStringAsFixed(2)}');
    }
    else
    {
      print('El dinero a retirar no debe ser menor o igual a 0');
    }
  }

  //Esta funcion solamente consulta el saldo
  void consusaldo()
  {
    print('El saldo de la cuenta de ${titular} es: ${saldo.toStringAsFixed(2)}');
  }
}