void main() {
  print("Testando condicionais");

  int idade = 13;

  //true or false
  bool maiorIdade = idade >= 18;
  //se idade for maior ou igual a 18 a variavel vai ser maiorIdade
  bool acompanhado = true;

  print(maiorIdade);

  if (maiorIdade) {
    print("Você pode entrar!");
  }
  else {
    if (acompanhado == true) {
      print("Você é menor de idade, mas está acompanhado. Pode entrar!");
    }else{
      print("Você não pode entrar!");
    }
  }
}
