/*Foi feita uma pesquisa para determinar o índice de mortalidade infantil em certo período. Faça um
programa que:
■■ leia o número de crianças nascidas no período;
■■ identifique o sexo (M ou F) e o tempo de vida de cada criança nascida.
O programa deve calcular e mostrar:
■■ a percentagem de crianças do sexo feminino mortas no período;
■■ a percentagem de crianças do sexo masculino mortas no período;
■■ a percentagem de crianças que viveram 24 meses ou menos no período.*/

import 'dart:io';

void main() {
  int masc = 0;
  int fem = 0;
  int menosQ24Meses = 0;

  print('Digite quantas crianças morreram no período de estudo: ');
  var mortesStr = stdin.readLineSync();

  if (mortesStr != null) {
    var mortes = int.parse(mortesStr);

    for (int i = 0; i < mortes; i++) {
      print(
          '\nDigite M para masculino e F para feminino.\nA criança era do gênero feminino ou masculino?');
      var generoCrianca = stdin.readLineSync();

      if ((generoCrianca == 'M') || (generoCrianca == 'm')) {
        masc++;
      } else if ((generoCrianca == 'F') || (generoCrianca == 'f')) {
        fem++;
      }
      print('Digite o tempo de vida da criança(em dias): ');
      var tempoVidaStr = stdin.readLineSync();

      if (tempoVidaStr != null) {
        var tempoVida = int.parse(tempoVidaStr);

        if (tempoVida < 720) {
          menosQ24Meses++;
        }
      }
    }
    var porcFem = ((fem * 100) / mortes);
    var porcMasc = ((masc * 100) / mortes);
    var porcTempo = ((menosQ24Meses * 100) / mortes);

    print(
        '\nPorcentagem de crianças do sexo feminino mortas no período: $porcFem%.');
    print(
        'Porcentagem de crianças do sexo feminino mortas no período: $porcMasc%.');
    print(
        'Porcentagem de crianças que viveram 24 meses ou menos no período: $porcTempo%.');
  }
}
