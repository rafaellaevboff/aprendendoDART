//Sérgio tem 25 anos, seu irmão, Pedro, é dois anos mais velho e o avô dos meninos tem a idade de Sérgio mais a idade de Pedro, vezes 3.
void main() {
  int idadeSergio = 25;
  int idadePedro = 25 + 2;
  int idadeAvo = (idadeSergio + idadePedro) * 3;
  print(
    "Idade de Sérgio: $idadeSergio.\nIdade de Pedro: $idadePedro.\nIdade do avô de Sérgio e Pedro: $idadeAvo");
}