/*Faça um programa que receba o salário de um funcionário e, usando a tabela a seguir, calcule e mostre
o novo salário.

FAixA sALAriAL            % dE AuMENTo
Até R$ 300,00                50%
R$ 300,00  <= R$ 500,00      40%
R$ 500,00 <= R$ 700,00       30%
R$ 700,00 <= R$ 800,00       20%
R$ 800,00 <= R$ 1.000,00     10%
Acima de R$ 1.000,00          5% */

import 'dart:io';

void main() {
  print('Digite o salário do funcionário: ');
  var salarioStr = stdin.readLineSync();

  if (salarioStr != null) {
    var salario = double.parse(salarioStr);

    if (salario <= 300) {
      double opcao1 = salario * 1.5;
      print('O salário passará a ser $opcao1');
    } 
    else if (salario > 300 && salario <= 500) {
      double opcao2 = salario * 1.4;
      print('O salário passará a ser $opcao2');
    } 
    else if (salario > 500 && salario <= 700) {
      double opcao3 = salario * 1.3;
      print('O salário passará a ser $opcao3');
    } 
    else if (salario > 700 && salario <= 800) {
      double opcao4 = salario * 1.2;
      print('O salário passará a ser $opcao4');
    } 
    else if (salario > 800 && salario <= 1000) {
      var opcao5 = salario * 1.1;
      print('O salário passará a ser $opcao5');
    } 
    else if (salario > 1000) {
      var opcao6 = salario * 1.05;
      print('O salário passará a ser $opcao6');
    }
  }
}