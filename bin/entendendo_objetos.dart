import 'package:entendendo_objetos/entendendo_objetos.dart'
    as entendendo_objetos;

void main(List<String> arguments) {
  AplicacaoPrincipal minhaVariavelNoMain1 = AplicacaoPrincipal();
  AplicacaoPrincipal minhaVariavelNoMain2 = AplicacaoPrincipal();
  AplicacaoPrincipal minhaVariavelNoMain3 = AplicacaoPrincipal();
  minhaVariavelNoMain1;

  minhaVariavelNoMain1.tamanho = 30;
  minhaVariavelNoMain2.tamanho = 40;
  minhaVariavelNoMain3.tamanho = 50;
  print(minhaVariavelNoMain1.tamanho);
  print(minhaVariavelNoMain2.tamanho);
  print(minhaVariavelNoMain3.tamanho);
}

class Batata {}

class AplicacaoPrincipal {
  int tamanho = 20;

  AplicacaoPrincipal() {
    print("batata feliz");
  }
  minhaFuncao() {
    print("batata feliz 2");
  }
}
