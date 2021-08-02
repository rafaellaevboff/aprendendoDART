void main() {
  int contador = 0;
  for (;;) {
    //(;;) iria fazer o código infinitamente
    contador++;
    print("O valor do contador é $contador.");

    if (contador == 123) {
      print("Atingi o valor 123");
      break;
    }
  }
  print("Programa finalizado!");
}

//usar cntrl+c pra parar código infinito
//break para o laço parar
