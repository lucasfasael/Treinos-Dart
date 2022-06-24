import 'dart:io';

void main(List<String> args) {
  var nomes = [];
  bool condicao = true;

  while (condicao) {
    print(
        "Olá 'sair', para sair, 'remover' para remover, 'editar' para editar, ou adicione nomes a lista");
    var input = stdin.readLineSync();
    if (input == "sair") {
      print("A lista ficou $nomes");
      print("Programa finalizado com sucesso.");
      condicao = false;
    }
    if (input == "remover") {
      print("Você removeu o último item digitado");
      nomes.removeLast();
    }
    if (input == "editar") {
      print("Qual item você quer editar ? Digite o número correspondente: ");
      var item = stdin.readLineSync();
      int item2 = int.parse(item!);
      print("Qual nome você vai acrescentar no lugar ?: ");
      var input2 = stdin.readLineSync();
      nomes[item2 - 1] = input2;
    } else {
      nomes.add(input);
    }
  }
}
