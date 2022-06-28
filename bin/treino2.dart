import 'dart:io';

void main(List<String> args) {
  var operacoes = Operacoes();

  print("Digite o primeiro valor: ");
  int a = int.parse(stdin.readLineSync()!);
  print("Digite o segundo valor: ");
  int b = int.parse(stdin.readLineSync()!);
  print("Digite o terceiro valor: ");
  int c = int.parse(stdin.readLineSync()!);
  print("O resultado é igual a : ${operacoes.soma(a, b, c)}");
}

class Operacoes {
  int soma(int a, int b, int c) {
    return a + b + c;
  }

  int subtracao(int a, int b, int c) {
    return a - b - c;
  }

  int multiplicacao(int a, int b, int c) {
    return a * b * c;
  }
}
