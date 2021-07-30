/*Faça um programa que verifique a validade de uma senha fornecida pelo usuário. A senha é 4531. O
programa deve mostrar uma mensagem de permissão de acesso ou não.*/

import 'dart:io';

void main() {
  print('Digite a senha: ');
  var senha = stdin.readLineSync();
  if (senha == '4531') {
    print('ACESSO PERMITIDO!');
  } else {
    print('ACESSO NEGADO!');
  }
}
