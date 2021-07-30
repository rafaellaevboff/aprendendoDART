/*Faça um programa que receba duas notas de seis alunos. Calcule e mostre:
■ a média aritmética das duas notas de cada aluno; e
■ a mensagem que está na tabela a seguir:

média ariTméTica        mensagem
Até 3                  Reprovado
Entre 3 e 7              Exame
De 7 para cima          Aprovado

■ o total de alunos aprovados;
■ o total de alunos de exame;
■ o total de alunos reprovados;
■ a média da classe.*/

import 'dart:io';

void main() {
  const qtd = 6;
  int reprovados = 0;
  int exame = 0;
  int aprovados = 0;
  double contadorMediaAluno = 0;
  double nota1 = 0;
  double nota2 = 0;
  double mediaAluno = 0;

  for (int i = 0; i < qtd; i++) {
    print('\nDigite a primeira nota do aluno $i');
    var nota1Str = stdin.readLineSync();
    if (nota1Str != null) {
      nota1 = double.parse(nota1Str);
    }
    print('Digite a segunda nota do aluno $i');
    var nota2Str = stdin.readLineSync();
    if (nota2Str != null) {
      nota2 = double.parse(nota2Str);
    }

    mediaAluno = (nota1 + nota2) / 2;
    contadorMediaAluno += mediaAluno;
    print('MEDIA DO ALUNO $i: $mediaAluno');
    print('contador media aluno $contadorMediaAluno');

    if (mediaAluno <= 3) {
      print('REPROVADO.');
      reprovados++;
    } else if (mediaAluno > 3 && mediaAluno <= 7) {
      print('EXAME.');
      exame++;
    } else {
      print('APROVADO.');
      aprovados++;
    }
  }
  double mediaClasse = contadorMediaAluno / qtd;

  print('\nTotal de alunos reprovados: $reprovados');
  print('Total de alunos exame: $exame');
  print('Total de alunos aprovados: $aprovados');
  print('Média da classe: $mediaClasse.');
}
