//categorizar altura de pessoas

void main() {
  int altura = 197;

  if (altura < 150) {
    print("ALTURA: PEQUENA");
  } else if (altura >= 150 && altura < 175) {
    print("ALTURA: MÉDIA");
  } else if (altura >= 175 && altura < 195) {
    print("ALTURA: GRANDE");
  } else {
    print("ALTURA: GIGANTE");
  }
}
