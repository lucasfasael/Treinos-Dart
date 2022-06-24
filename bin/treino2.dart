import 'dart:io';

import 'dart:svg';

void main(List<String> args) {
  var funcionario = [];
  bool condicao = true;
  bool list = true;
  int x = 1;

  print("Bem vindo ao sistema da folha de pagamento!");
  print(
      "Comandos: 'editar', 'remover', 'quantidade', 'sair', 'lista', 'comandos'");

  while (condicao) {
    print("Qual fúncionario vai adentrar a empresa ?");
    var input = stdin.readLineSync();
    if (input == "editar") {
      print("Digite o número correspondente ao fúncionario a ser editado: ");
      var input2 = stdin.readLineSync();
      int posicao = int.parse(input2!);
      print("Qual nome você vai colocar no lugar?: ");
      var input3 = stdin.readLineSync();
      funcionario[posicao - 1] = input3;
    }
    if (input == "remover") {
      print("Digite o número correspondente ao fúncionario a ser removido: ");
      var input2 = stdin.readLineSync();
      int posicao = int.parse(input2!);
      print("O fúncionario ${funcionario[posicao - 1]} , foi removido.");
      funcionario.removeAt(posicao - 1);
    }
    if (input == "quantidade") {
      print("Existem: funcionario.Length , funcionários na empresa.");
    }
    if (input == "comandos") {
      print(
          "Comandos: 'editar', 'remover', 'quantidade', 'sair', 'lista', 'comandos'.");
    }
    if (input == "sair") {
      print("Programa finalizado, até a próxima. :)");
      condicao = false;
    }
    if (input == "lista") {
      list = true;
      while (list) {
        print("O $x° funcionário é: ${funcionario[x - 1]}");
        x++;
        if (x == funcionario.length) {
          list = false;
        }
      }
    } else {
      funcionario.add(input);
      print("Funcionário adicionado com sucesso.");
    }
  }
}
