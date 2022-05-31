import 'dart:io';

void main(List<String> args) {
  bool condicao = true;
  var comidas = [];

  print("Bem vindo ao fast food do Lufe Teacher, favor informar o seu nome: ");
  var nome = stdin.readLineSync();
  print("Certo, seja bem vindo $nome, agora me informe a sua idade: ");
  var idade = stdin.readLineSync();

  while (condicao) {
    print(
        "Irei anotar as comidas que você gosta, digite (finalizar) para finalizar o atendimento, ou (remover) para remover o último item: ");
    var input = stdin.readLineSync();
    if (input == "finalizar") {
      print("Foi um prazer te atender, espero te ver em breve.");
      condicao = false;
    } else {
      if (input == "remover") {
        print("O ultimo item foi removido");
        comidas.removeLast();
      } else {
        comidas.add(input);
        print(
            "Oi $nome, você tem $idade anos e gosta de comer no restaurante Lufe Teacher: $comidas");
      }
    }
  }
}
