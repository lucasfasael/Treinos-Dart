import 'dart:io';

void main(List<String> args) {
  List<Pessoa> pessoas = [];
  bool condicao = true;
  int opcao;

  print("Bem vindo ao sistema da folha de pagamento.");

  while (condicao) {
    print(
        "Comandos: 1 - Para adicionar funcionários, 2 - Para editar um funcionário existente, 3 - Para remover um funcionário, 4 - Para mostrar os dados de um funcionário em específico, 5 - Para mostrar o nome de todos os funcionários da empresa, 6 - Para mostrar a quantidade de funcionários cadastrados, 7 - Para mostrar todos os dados, 8 - Para encerrar a aplicação.");
    opcao = int.parse(stdin.readLineSync()!);
    if (opcao == 1) {
      print("Qual o nome do funcionário ? : ");
      String? nome = stdin.readLineSync();
      print("Agora a idade ? : ");
      int? idade = int.parse(stdin.readLineSync()!);
      if (idade < 18) {
        print("O funcionário não pode ser menor de idade");
      } else {
        print(
            "Como o funcionário se identifica a respeito do seu gênero ? 'M','F','Z' : ");
        String? sexo = stdin.readLineSync();
        if (sexo == "M" || sexo == "F" || sexo == "Z") {
          print("E quanto é o salário do mesmo ? : ");
          double salario = double.parse(stdin.readLineSync()!);
          Pessoa funcionario = Pessoa(nome!, idade, sexo!, salario);
          pessoas.add(funcionario);
        } else {
          print(
              "O genêro não pode ser diferente dos apresentados, utilize 'M','F','Z'.");
        }
      }
    }
    if (opcao == 2) {
      print(
          "Digite o número correspondente ao funcionário a ser editado (checar na opção 5): ");
      int input4 = int.parse(stdin.readLineSync()!);
      print("Qual o novo nome ? : ");
      String? nome = stdin.readLineSync();
      print("Qual é a nova idade ? :");
      int idade = int.parse(stdin.readLineSync()!);
      print("Qual é a nova identificação de gênero ? : ");
      String? sexo = stdin.readLineSync();
      print("Qual o novo salário ? : ");
      double salario = double.parse(stdin.readLineSync()!);
      pessoas[input4 - 1] = Pessoa(nome!, idade, sexo!, salario);
      print("Dados alterados com sucesso !");
    }
    if (opcao == 3) {
      print(
          "Digite o número correspondente ao funcionário a ser removido (checar na opção 5): ");
      int input4 = int.parse(stdin.readLineSync()!);
      pessoas.removeAt(input4 - 1);
    }
    if (opcao == 4) {
      print(
          "Digite o número correspondente ao fúncionario a ser apresentada a ficha (checar na opção 5): ");
      int input4 = int.parse(stdin.readLineSync()!);
      Pessoa funcionario1 = pessoas[input4 - 1];
      print(
          "Ficha do funcionário selecionado: O nome é ${funcionario1.nome}, possui ${funcionario1.idade} anos, seu sexo é ${funcionario1.sexo} e tem o salário de ${funcionario1.salario} reais.");
    }
    if (opcao == 5) {
      int x = 1;
      pessoas.forEach((Pessoa funcionario) {
        print("O $x° funcionário é: ${funcionario.nome}");
        x++;
      });
    }
    if (opcao == 6) {
      print("Estão cadastrados na empresa: ${pessoas.length} pessoas.");
    }
    if (opcao == 7) {
      pessoas.forEach((Pessoa funcionario) {
        funcionario.apresenta();
      });
    }
    if (opcao == 8) {
      print("Programa finalizado, até a próxima.");
      condicao = false;
    }
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
        "O funcionário ${this.nome} possui ${this.idade} anos, é do sexo ${this.sexo} e possui um salário de ${this.salario} reais.");
  }
}
