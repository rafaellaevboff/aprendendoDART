/*Uma empresa decide aplicar descontos nos seus preços usando a tabela a seguir. Faça um programa que
receba o preço atual de um produto e seu código, calcule e mostre o valor do desconto e o novo preço.

PrEço ATuAL                    % dE dEsCoNTo
Até R$ 30,00                    Sem desconto
Entre R$ 30,00 e R$ 100,00           10%
Acima de R$ 100,00                   15%
*/

import 'dart:io';

void main() {
  print('Digite o preço atual do produto:');
  var precoStr = stdin.readLineSync();

  if (precoStr != null) {
    var preco = double.parse(precoStr);
    if (preco <= 30) {
      print('Não há desconto para esse produto! Você irá pagar $preco reais.');
    } else if (preco > 30.00 && preco <= 100) {
      double desc10 = preco * 0.9;
      print('Há desconto de 10%. Você irá pagar $desc10 reais.');
    } else if (preco > 100) {
      double desc15 = preco * 0.85;
      print('Há desconto de 15%. Você irá pagar $desc15 reais.');
    }
  }
}
