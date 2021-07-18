void main() {
  ContaCorrente conta = ContaCorrente();
  conta.titular = 'Rafaella';
  conta.agencia = 123;
  conta.conta = 1234;

  conta.saldo = 150.0;
  print(conta.saldo);

  conta.saldo += 50.0; //adicionei mais 50 reais no saldo
  print(conta.saldo);

  //inprimir dados da conta:
  // print('Titular: ${conta.titular}');
  // print('Agência: ${conta.agencia}');
  // print('Conta: ${conta.conta}');
  // print('Saldo: ${conta.saldo}');
}

class ContaCorrente {
  late String titular;
  late int agencia;
  late int conta;
  late double saldo;
}
