import 'dart:io';

void main(List<String> args) {
  calculoDeImc();
}

//Programa que calcula o IMC
calculoDeImc() {
  print("Olá vim calcular o seu IMC");
  print("Digite o seu peso");

  var input = stdin.readLineSync();
  int peso = int.parse(input!);

  print("Agora a sua altura");

  var input2 = stdin.readLineSync();
  double altura = double.parse(input2!);
  double imc = calcIMC(peso, altura);

  imprimirResultado(imc);
}

//Função que calcula o IMC
calcIMC(peso, altura) {
  return peso / (altura * altura);
}

//Imprime o Resultado baseado no IMC passado por parametro
imprimirResultado(double imc) {
  if (imc <= 18.5) {
    print("Você está abaixo do peso ideal.");
  } else if (imc <= 24.9) {
    print("Você está com o peso dentro da normalidade");
  } else if (imc <= 29.9) {
    print("Você está com sobrepeso");
  } else if (imc <= 35.9) {
    print("Você está com Obesidade Grau 1");
  } else if (imc <= 39.9) {
    print("Você está com Obesidade Grau 2");
  } else if (imc > 40) {
    print("Você está com Obesidade Grau 3");
  }
}
