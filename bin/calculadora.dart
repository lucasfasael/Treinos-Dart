import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  print("Olá, estou aqui para calcular, 1 para somar, 2 para subtrair)");
  var input0 = stdin.readLineSync();
  double opcao = double.parse(input0!);
  if (opcao == 1) {
    print("Olá, estou aqui para somar números. :)");
    print("Digite o primeiro número");
    var input = stdin.readLineSync();
    double n1 = double.parse(input!);
    print("Digite o segundo número");
    var input2 = stdin.readLineSync();
    double n2 = double.parse(input2!);
    double n3 = n1 + n2;
    print("A soma é igual a : $n3");
  }
  if (opcao == 2) {
    print("Olá, estou aqui para subtrair números. :)");
    print("Digite o primeiro número");
    var input = stdin.readLineSync();
    double n1 = double.parse(input!);
    print("Digite o segundo número");
    var input2 = stdin.readLineSync();
    double n2 = double.parse(input2!);
    double n3 = n1 - n2;
    print("A subtração é igual a : $n3");
  }
  if (opcao == 3) {
    print("Olá, estou aqui para multiplicar números. :)");
    print("Digite o primeiro número: ");
    var input = stdin.readLineSync();
    double n1 = double.parse(input!);
    print("Digite o segundo número");
    var input2 = stdin.readLineSync();
    double n2 = double.parse(input2!);
    double n3 = n1 * n2;
    print("A sua multiplicação é igual a : $n3");
  }
  if (opcao == 4) {
    print("Olá, estou aqui para dividir números. :)");
    print("Digite o primeiro número: ");
    var input = stdin.readLineSync();
    double n1 = double.parse(input!);
    print("Digite o segundo número");
    var input2 = stdin.readLineSync();
    double n2 = double.parse(input2!);
    double n3 = n1 / n2;
    print("A sua divisão é igual a : $n3");
  }
}
