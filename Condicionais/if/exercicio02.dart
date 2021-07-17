//bolsa de valores

void main() {
  double diaDeCompra = 3.45;
  double diaDeVenda = 4.23;
  int quantidade = 50;

  if ((diaDeCompra * quantidade) < (diaDeVenda * quantidade)) {
    print("Você teve lucro!");
  } else {
    print("Você teve prejuízo!");
  }
}
