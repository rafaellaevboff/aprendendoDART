void main() {
  String string_inteiro = "13";
  String string_double = "13.14";

  print(string_inteiro);
  print(string_double);

  int numero_inteiro = int.parse(string_inteiro);
  double numero_double = double.parse(string_double);

  print(numero_inteiro);
  print(numero_double);
}

/*Transformar um número de uma String para um tipo numérico:

double.parse(nome_da_variável);
// Converte para double

int.parse(nome_da_variável);
// Converte para int */