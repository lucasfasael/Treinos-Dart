import 'dart:io';

void main(List<String> args) {
  bool condicao = true;
  var nomes = [];

  while (condicao) {
    print("Farei uma lista para a festa, avise se quiser sair");
    var input = stdin.readLineSync();
    if (input == "sair") {
      print("Programa finalizado");
      condicao = false;
    } else {
      nomes.add(input);
      print("Irão a festa: $nomes");
      print(nomes.length);
      if (nomes.length > 3) {
        print("Irei remover o terceiro nome $nomes[2]");
        nomes.removeAt(2);
      }
    }
  }
}
