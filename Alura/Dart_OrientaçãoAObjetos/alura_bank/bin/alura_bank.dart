void main() {
  ContaCorrente conta1 = ContaCorrente();
  ContaCorrente conta2 = ContaCorrente();

  conta1.titular = 'Felipe';
  conta1.agencia = 123;
  conta1.conta = 1;

  conta2.titular = 'Felipe';
  conta2.agencia = 123;
  conta2.conta = 1;

  print(conta1 == conta2); //false
  print(conta1.titular == conta2.titular); //false
  print(conta1.agencia == conta2.agencia); //true
  print(conta1.conta == conta2.conta); //true
  print(conta1.saldo == conta2.saldo); //true

  print(conta1.hashCode); //código hash do objeto1
  print(conta2.hashCode); //código hash do objeto2

  conta1 = conta2; //as duas contas vao ter o mesmo código hash
  print(conta1.hashCode);
  print(conta2.hashCode);
  print(conta1.hashCode == conta2.hashCode);

  //Referência versus Valor
  //As duas contas tem as mesmas propriedades, mas são dois objetos diferentes um do outro
}

class ContaCorrente {
  late String titular;
  int agencia = 145;
  late int conta;
  double saldo = 20.0;
}
