import 'dart:io';

void main(List<String> args) {
  Pessoa funcionario = Pessoa('Marcos', 1, 'M', 2.3);
  List<Pessoa> pessoas = [];
  bool condicao = true;
  while (condicao) {
    print("Qual o nome do funcionario ?: ");
    String? input = stdin.readLineSync();
    if (input == "sair") {
      pessoas.forEach((Pessoa funcionario) {
        print(funcionario.nome);
        exit;
      });
    }
    funcionario.nome = input!;
    print("Qual a idade do funcionario ?: ");
    String? input2 = stdin.readLineSync();
    int i = int.parse(input2!);
    funcionario.idade = i;
    print("Qual o sexo do funcionario ?: ");
    String? input3 = stdin.readLineSync();
    funcionario.sexo = input3!;
    print("Qual o salário do funcionario ?: ");
    String? input4 = stdin.readLineSync();
    double h = double.parse(input4!);
    funcionario.salario = h;
    pessoas.add(funcionario);
  }
}

class Pessoa {
  String nome = '';
  int idade = 0;
  String sexo = '';
  double salario = 0;

  Pessoa(String nome, int idade, String sexo, double salario) {
    this.nome = nome;
    this.idade = idade;
    this.sexo = sexo;
    this.salario = salario;
  }
  void apresenta() {
    print(
        "O nome é ${this.nome}, a idade é ${this.idade}, o sexo é ${this.sexo} e o salário é ${this.salario}.");
  }
}
