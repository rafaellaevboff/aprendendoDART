void main() {
  int i;

  for (int multiplicando = 1; multiplicando <= 10; multiplicando++) {
    print("Tabuada de $multiplicando:");
    for (i = 0; i <= 10; i++) {
      print("$multiplicando * $i = ${multiplicando * i} ");
      //o que estiver dentro de ${...} vai ter que ser resolvido antes de ser impresso na tela
    }
  }
}
