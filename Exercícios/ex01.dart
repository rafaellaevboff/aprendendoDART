/*//Em um campeonato de um jogo existe um time de 10 jogadores. Faça um progra-
//ma que receba a idade, o peso e a altura de cada um dos jogadores, calcule e mostre:
//■■ a quantidade de jogadores com idade inferior a 18 anos;
//■■ a média das idades dos jogadores;
//■■ a média das alturas de todos os jogadores; e
//■■ a porcentagem de jogadores com mais de 80 kg.
*/
import 'dart:io';

void main() {
  const qtd = 10;
  var menosQue18anos = 0;
  double mediaIdades = 0;
  int acumuladorIdades = 0;
  double mediaAltura = 0;
  int acumuladorAltura = 0;
  double porcentagemMais80kg = 0;
  int maisQ80kg = 0;

  for (int i = 0; i < qtd; i++) {
    print("Digite o nome do jogador: ");
    var nome = stdin.readLineSync();

    //IDADE
    print("Digite a idade do jogador $nome: ");
    var idadeStr = stdin.readLineSync();

    if (idadeStr != null) {
      var idade = int.parse(idadeStr);
      acumuladorIdades += idade;

      if (idade < 18) {
        menosQue18anos++;
      }
    }

    //PESO
    print("Digite o peso do jogador $nome: ");
    var pesoStr = stdin.readLineSync();

    if (pesoStr != null) {
      var peso = double.parse(pesoStr);

      if (peso > 80) {
        maisQ80kg++;
      }
    }

    //ALTURA
    print("Digite a altura do jogador $nome em centímetros:");
    var alturaStr = stdin.readLineSync();

    if (alturaStr != null) {
      var altura = int.parse(alturaStr);
      acumuladorAltura += altura;
    }
  }

  mediaIdades = acumuladorIdades / qtd;
  mediaAltura = acumuladorAltura / qtd;
  porcentagemMais80kg = ((maisQ80kg * 100) / qtd);

  print("A quantidade de jogadores com menos de 18 anos é $menosQue18anos");
  print("A media das idades dos jogadores é $mediaIdades.");
  print("A média das alturas dos jogadores é $mediaAltura cm.");
  print("A porcentagem de jogadores com mais de 80kg é de $porcentagemMais80kg%");
}
