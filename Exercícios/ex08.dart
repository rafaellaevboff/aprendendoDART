/*Em uma fábrica trabalham homens e mulheres divididos em três classes:
■■ trabalhadores que fazem até 30 peças por mês — classe 1;
■■ trabalhadores que fazem de 31 a 50 peças por mês — classe 2;
■■ trabalhadores que fazem mais de 50 peças por mês — classe 3.
A classe 1 recebe salário mínimo. A classe 2 recebe salário mínimo mais 3% deste salário por peça, acima das 30 peças iniciais.
A classe 3 recebe salário mínimo mais 5% desse salário por peça, acima das 30 peças iniciais.
Faça um programa que receba o número do operário, o número de peças fabricadas no mês, o sexo do operário, e que também calcule e mostre:
■ o número do operário e seu salário;
■ o total da folha de pagamento da fábrica;
■ o número total de peças fabricadas no mês;
■ maior salário;
A fábrica possui 15 operários.
*/
import 'dart:io';

void main() {
  const qtd = 2;
  int i = 0;
  String sexo;

  int totPecas = 0;

  //salario
  double salario = 0;
  double maiorSalario = 0;
  double totSal1 = 0;
  double totSal2 = 0;
  double totSal3 = 0;
  double totalFabrica = 0;

  for (i = 0; i < qtd; i++) {
    print('\nDigite o número do operário:');
    var numOperario = stdin.readLineSync();

    print('Digite o sexo do operário:');
    var sexo = stdin.readLineSync();

    print('Digite o número de peças fabricadas no mês:');
    var pecasStr = stdin.readLineSync();

    if (pecasStr != null) {
      var pecas = int.parse(pecasStr);
      totPecas += pecas;

      if (pecas <= 30) {
        //classe 1
        salario = 1100;
        totSal1 += salario;
      } else if (pecas > 30 && pecas <= 50) {
        //classe 2
        salario = 1100 + ((1100 * 0.03) * (pecas - 30));
        totSal2 += salario;
      } else {
        //classe 3
        salario = 1100 + ((1100 * 0.05) * (pecas - 30));
        totSal3 += salario;
      }

      if (salario >= maiorSalario) {
        maiorSalario = salario;
      }

      totalFabrica = totSal1 + totSal2 + totSal3;
    }

    print('\nNumero do operário: $numOperario');
    print('O sexo do operário $numOperario é: $sexo.');
    print('Folha de pagamento do operário $numOperario: $salario');
  }
  print('\nTotal de peças fabricadas no mês: $totPecas');
  print('Folha de pagamento da fábrica $totalFabrica');
  print('O maior salário é $maiorSalario');
}
