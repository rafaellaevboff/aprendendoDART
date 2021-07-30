/*Faça um programa que receba a idade de um nadador e mostre sua categoria, usando as regras a seguir.
Para idade inferior a 5, deverá mostrar mensagem.

CATEgoriA     idAdE
Infantil      5 a 7
Juvenil       8 a 10
Adolescente   11 a 15
Adulto        16 a 30
Sênior     Acima de 30 */

import 'dart:io';

void main() {
  print('Digite a idade do nadador: ');
  var idadeStr = stdin.readLineSync();

  if (idadeStr != null) {
    var idade = int.parse(idadeStr);

    if (idade >= 5 && idade <= 7) {
      print('CATEGORIA: INFANTIL.');
    } else if (idade >= 8 && idade <= 10) {
      print('CATEGORIA: JUVENIL.');
    } else if (idade >= 11 && idade <= 15) {
      print('CATEGORIA: ADOLESCENTE.');
    } else if (idade >= 16 && idade <= 30) {
      print('CATEGORIA: ADULTO.');
    } else if (idade >= 30) {
      print('CATEGORIA: SÊNIOR.');
    } else {
      print('NÃO ESTÁ ENQUADRADO EM UMA CATEGORIA. IDADE MÍNIMA: 5 ANOS.');
    }
  }
}
