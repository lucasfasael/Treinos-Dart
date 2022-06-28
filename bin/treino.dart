import 'dart:io';

void main(List<String> args) {
  List<Pessoa> pessoas = [];
  List<Dependentes> filhos = [];
  Dependentes filho = Dependentes(', não tem filhos', 0);
  bool condicao = true;

  while (condicao) {
    List<Dependentes> filhos = [];
    print("Qual o nome do funcionário ? : ");
    String? nome = stdin.readLineSync();
    print("Qual a idade do funcionário ? : ");
    int idade = int.parse(stdin.readLineSync()!);
    print("O funcionário tem filho(a) ? : ");
    String? input = stdin.readLineSync();
    bool condicao2 = true;
    if (input == "sim") {
      while (condicao2) {
        print("Qual o nome do filho ? : ");
        String? nome1 = stdin.readLineSync();
        print("Qual a idade do filho ? : ");
        int idade1 = int.parse(stdin.readLineSync()!);
        Dependentes filho = Dependentes(nome1!, idade1);
        filhos.add(filho);
        print("Tem outro filho(a) ? : ");
        String? input3 = stdin.readLineSync();
        if (input3 == "não" || input3 == "nao") {
          condicao2 = false;
        }
      }
    }
    Pessoa funcionario = Pessoa(nome!, idade, filhos);
    pessoas.add(funcionario);
    funcionario.apresenta();
    print("Digite 1 para sair, 2 para adicionar outro funcionário: ");
    int input2 = int.parse(stdin.readLineSync()!);
    if (input2 == 1) {
      print("Programa finalizado ! ");
      condicao = false;
    }
  }
}

class Pessoa {
  String? nome = '';
  int idade = 0;
  List<Dependentes> filhos = [];

  Pessoa(String nome, int idade, List<Dependentes> filhos) {
    this.nome = nome;
    this.idade = idade;
    this.filhos = filhos;
  }
  String? apresenta() {
    print(
        "O fúncionario ${this.nome}, tem ${this.idade} anos e os filhos são: ");
    filhos.forEach((filho) {
      print(filho.nome1);
    });
  }
}

class Dependentes {
  String? nome1 = '';
  int idade1 = 0;

  Dependentes(String nome1, int idade1) {
    this.nome1 = nome1;
    this.idade1 = idade1;
  }
}
