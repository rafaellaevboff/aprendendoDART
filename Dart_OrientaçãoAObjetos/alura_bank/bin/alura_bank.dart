void main() {
  ContaCorrente contaDaAmanda = ContaCorrente();
  contaDaAmanda.titular = 'Amanda';
  contaDaAmanda.agencia = 123;
  contaDaAmanda.conta = 1;

  print('Titular: ${contaDaAmanda.titular}');
  print('Agência: ${contaDaAmanda.agencia}');
  print('Saldo: ${contaDaAmanda.saldo}');

  ContaCorrente contaDoTiago = ContaCorrente();
  contaDoTiago.titular = 'Tiago';
  contaDoTiago.conta = 2;

  print('Titular: ${contaDoTiago.titular}');
  print('Agência: ${contaDoTiago.agencia}');
  print('Saldo: ${contaDoTiago.saldo}');
}

class ContaCorrente {
  late String titular;
  int agencia = 145; // posso ter um valor padrão e mudar ele no objeto, exemplo disso é a agência da Amanda que foi inicializada como 123, a de Tiago não foi específica e pegou daq o valor cadastrado
  late int conta;
  double saldo = 20.0; //posso inicializar com um valor padrão que irá valer para todos os objetos
}
