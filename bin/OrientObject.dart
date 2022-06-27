import 'dart:io';

List<Dependentes> filhos = [];
void main(List<String> args) {
  List<Pessoa> funcionarios = [];

  bool condicao = true;
  bool condicao2 = true;
  while (condicao) {
    List<Dependentes> filhos = [];
    condicao = true;
    print("Qual nome do funcionário ? : ");
    String? nome = stdin.readLineSync();
    print("Qual a idade do fúncionario ? : ");
    int idade = int.parse(stdin.readLineSync()!);
    print("Possui filho ? : ");
    String? input = stdin.readLineSync();
    condicao2 = true;
    if (input == "sim") {
      while (condicao2) {
        print("Qual o nome do filho ? : ");
        String? nome1 = stdin.readLineSync();
        print("Qual a idade do filho ? : ");
        int idade1 = int.parse(stdin.readLineSync()!);
        Dependentes filho = Dependentes(nome1!, idade1);
        filhos.add(filho);
        print("Tem outro filho ? : ");
        String? input3 = stdin.readLineSync();
        if (input3 == "não" || input3 == "nao") {
          condicao2 = false;
        }
      }
    }
    Pessoa funcionario = Pessoa(nome!, idade, filhos);
    funcionarios.add(funcionario);
    funcionario.apresenta();
    print("Quer sair ?: ");
    String? input2 = stdin.readLineSync();
    if (input2 == "sim") {
      condicao = false;
    }
  }
  print("Mostrar todos os funcionários ? : ");
  String? input4 = stdin.readLineSync();
  if (input4 == "sim") {
    funcionarios.forEach((funcionario) {
      funcionario.apresenta();
    });
  }
}

class Pessoa {
  String nome = '';
  int idade = 0;
  List<Dependentes> filhos = [];

  Pessoa(String nome, int idade, List<Dependentes> filhos) {
    this.nome = nome;
    this.idade = idade;
    this.filhos = filhos;
  }

  String? fipresent() {
    filhos.forEach((filho) {
      print(filho.nome1);
    });
  }

  String? apresenta() {
    print(
        "O fúncionario ${this.nome} tem ${this.idade} anos e os filhos são: ");
    filhos.forEach((filho) {
      print(filho.nome1);
    });
    ;
  }
}

class Dependentes {
  String nome1 = '';
  int idade1 = 0;

  Dependentes(String nome1, int idade1) {
    this.nome1 = nome1;
    this.idade1 = idade1;
  }
}
