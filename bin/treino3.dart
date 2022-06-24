import 'dart:io';

void main(List<String> args) {
  Pessoa funcionario = Pessoa('Lucas', 23, 'M', 2.333);
  print("Qual o nome do fúncionario? : ");
  var input = stdin.readLineSync();
  funcionario.nome = input!;
  print("Agora a idade do mesmo: ");
  var input2 = stdin.readLineSync();
  int i = int.parse(input2!);
  funcionario.idade = i;
  print("Qual o sexo do mesmo: ");
  var input3 = stdin.readLineSync();
  funcionario.sexo = input3!;
  print("E o salário do mesmo: ");
  var input4 = stdin.readLineSync();
  double h = double.parse(input4!);
  funcionario.salario = h;
  funcionario.apresenta();
}

class Pessoa {
  String nome = '';
  int idade = 0;
  String sexo = '';
  double salario = 0.0;

  Pessoa(String nome, int idade, String sexo, double salario) {
    this.nome = nome;
    this.idade = idade;
    this.sexo = sexo;
    this.salario = salario;
  }

  void apresenta() {
    print(
        "O nome do fúncionario é: ${this.nome}, ele tem ${this.idade} anos, é do sexo ${this.sexo}, e ganha ${this.salario} reais.");
  }
}
