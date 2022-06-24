import 'dart:io';

void main(List<String> args) {
  List<Pessoa> pessoas = [];
  bool condicao = true;

  while (condicao) {
    Pessoa funcionario = Pessoa('nome', 0, 0, 0, 0, 0, 0, 0);
    print(
        "Olá estou aqui para dizer o périodo concessivo de férias de um fúncionario, qual o nome dele? : ");
    String? nome = stdin.readLineSync();
    print("Qual dia o fúncionario entrou na empresa? : ");
    int dd = int.parse(stdin.readLineSync()!);
    print("Qual mês o fúncionario entrou na empresa? : ");
    int mm = int.parse(stdin.readLineSync()!);
    print("Qual o ano que o fúncionario entrou na empresa? : ");
    int aa = int.parse(stdin.readLineSync()!);
    print("Qual o salário do fúncionario ? : ");
    double salario = double.parse(stdin.readLineSync()!);
    int n1 = dd - 1;
    int n2 = mm;
    int n3 = aa + 2;
    funcionario = Pessoa(nome, dd, mm, aa, n1, n2, n3, salario);
    pessoas.add(funcionario);
    pessoas.forEach((Pessoa funcionario) {
      funcionario.apresenta();
    });
    print(
        "O fúncionario precisa ter acabado de aproveitar suas férias até a data: ${dd - 1}/$mm/${aa + 2}");
    print("Você quer sair ? ");
    String? input = stdin.readLineSync();
    if (input == "sim") {
      print("Programa finalizado com sucesso. :)");
      condicao = false;
    }
  }
}

class Pessoa {
  String? nome = '';
  int dd = 0;
  int mm = 0;
  int aa = 0;
  int n1 = 0;
  int n2 = 0;
  int n3 = 0;
  double salario = 0;

  Pessoa(String? nome, int dd, int mm, int aa, int n1, int n2, int n3,
      double salario) {
    this.nome = nome;
    this.dd = dd;
    this.mm = mm;
    this.aa = aa;
    this.salario = salario;
    this.n1 = n1;
    this.n2 = n2;
    this.n3 = n3;
  }

  void apresenta() {
    print(
        "O fúncionario ${this.nome}, entrou na empresa na data ${this.dd}/${this.mm}/${this.aa}, com o salário de ${this.salario} e terá que aproveitar suas férias até: ${this.n1}/${this.n2}/${this.n3}");
  }
}
