void main() {
  print("Testando condicionais");

  int idade = 8;
  bool acompanhado = false;

  // && = e
  // || ou

  if (idade >= 16 || idade >= 10 && acompanhado == true) {
    print("Você pode entrar");
  } else {
    print("Você não pode entrar!");
  }
}