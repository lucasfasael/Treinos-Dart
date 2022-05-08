import 'dart:io';

void main(List<String> args) {
  var nome = [];

  bool condicao = true;

  while (condicao) {
    print("Digite o nome");
    var text = stdin.readLineSync();
    if (text == "sair") {
      condicao = false;
      print("PROGRAMA FINALIZADO");
    } else {
      nome.add(text);
    }
    print("Seu nome é : $nome");
    print("\n");
  }
}
