import 'dart:io';

void main(List<String> args) {
  bool condicao = true;
  var nomes = [];
  int x = 1;

  print("Olá, farei uma lista com os nomes que irão a sua festa!");
  print(
      "Digite 'sair', para finalizar a lista, 'remover', para remover o último item, 'editar', para editar algum nome.");
  while (condicao) {
    print("Digite o $x ° nome: ");
    var input = stdin.readLineSync();
    if (input == "sair") {
      condicao = false;
    }
    if (input == "editar") {
      print("Qual nome você quer editar ?");
      print(
          "Digite o número correspondente a ordem que está o nome a ser editado: ");
      var z = stdin.readLineSync();
      int editar = int.parse(z!);
      print("Agora digite o novo nome, que entrará no lugar: ");
      var novo = stdin.readLineSync();
      nomes[editar - 1] = novo;
    }
    if (input == "remover") {
      print("Qual nome você quer remover ?");
      print(
          "Digite o número correspondente a ordem que está o nome a ser removido, ou digite 'f', para remover o último digitado.");
      var y = stdin.readLineSync();
      if (y == "f") {
        nomes.removeLast();
        x = x - 1;
      } else {
        int remove = int.parse(y!);
        nomes.removeAt(remove - 1);
        x = x - 1;
      }
    } else {
      if (input != "sair" && input != "editar") {
        nomes.add(input!);
        print("Estão autorizados a participar da festa: $nomes");
        x = x + 1;
      }
    }
  }
}
