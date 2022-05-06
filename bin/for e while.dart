void main(List<String> args) {
  //COMO USAR O FOR
  // for (int n1 = 1; n1 < 10; n1++) {
  //   print("rodou $n1");
//  }
  bool condicao = true;
  int n1 = 0;
//COMO USAR O WHILE
  while (condicao) {
    print("rodou $n1");
    if (n1 > 9) {
      condicao = false;
    }
    n1++;
  }
}
