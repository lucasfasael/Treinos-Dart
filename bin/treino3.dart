import 'dart:io';

void main(List<String> args) {
  List<Pessoa> funcionarios = [];
  List<Dependente> filhos = [];
  bool condicao = true;
  bool condicao3 = true;

  while (condicao) {
    print("Bem vindo ao cadastro de funcionários ! ");
    print(
        "Digite 1 - para cadastrar um novo funcionário, 2 - para editar um funcionário existente, 3 - para remover um funcionário, 4 - mostrar os dados de um funcionário, 5 - mostrar o nome de todos os funcionários, 6 - mostrar quantos funcionários estão cadastrados, 7 - para finalizar a aplicação.");
    int opcao = int.parse(stdin.readLineSync()!);
    if (opcao == 1) {
      List<Dependente> filhos = [];
      print("Qual o nome do funcionário a ser cadastrado ? : ");
      String? nome = stdin.readLineSync();
      print(
          "Como o funcinário se identifica a respeito do seu gênero 'M', 'F' ou 'O' ? : ");
      String? sexo = stdin.readLineSync();
      condicao3 = true;
      if (sexo != "M" && sexo != "F" && sexo != "O") {
        while (condicao3) {
          print(
              "Favor utilizar um dos gêneros apresentados 'M', 'F', 'O', digite novamente : ");
          String? sexo = stdin.readLineSync();
          if (sexo == "M" || sexo == "F" || sexo == "O") {
            condicao3 = false;
          }
        }
      }
      print("Qual a idade do funcionário ? : ");
      int idade = int.parse(stdin.readLineSync()!);
      print(
          "Qual a data(formato AnoMêsDia nessa ordem, tudo junto) de admissão do funcionário ? : ");
      DateTime admissao = DateTime.parse(stdin.readLineSync()!);
      print("Qual o salário do funcionário ? ");
      double salario = double.parse(stdin.readLineSync()!);
      print("O funcionário tem filhos ? (1 - sim, 2 - não) : ");
      int input = int.parse(stdin.readLineSync()!);
      bool condicao2 = true;
      if (input == 1) {
        while (condicao2) {
          print("Qual o nome do filho(a) ? : ");
          String? nome1 = stdin.readLineSync();
          print("Qual a idade do filho(a) ? : ");
          int idade1 = int.parse(stdin.readLineSync()!);
          print("Qual o sexo do filho(a) 'M' ou 'F' ? : ");
          String? sexo1 = stdin.readLineSync();
          bool condicao4 = true;
          if (sexo1 != "M" && sexo1 != "F") {
            while (condicao4) {
              print(
                  "Favor utilizar um dos gêneros indicados 'M' ou 'F', digite novamente : ");
              String? sexo1 = stdin.readLineSync();
              if (sexo1 == "M" || sexo1 == "F") {
                condicao4 = false;
              }
            }
          }
          Dependente filho = Dependente(nome1!, sexo1, idade1);
          filhos.add(filho);
          print("Tem outro filho(a) ? 1 - sim, 2 - não : ");
          int input4 = int.parse(stdin.readLineSync()!);
          if (input4 == 2) {
            condicao2 = false;
          }
        }
      }
      Pessoa funcionario =
          Pessoa(nome!, sexo!, idade, admissao, salario, filhos);
      funcionarios.add(funcionario);
      funcionario.apresenta();
    }
    if (opcao == 2) {
      print(
          "Digite o número correspondente ao funcionário a ser editado(checar na opção 5) : ");
      int posicao2 = int.parse(stdin.readLineSync()!);
      List<Dependente> filhos = [];
      print("Qual o novo nome do funcionário a ser cadastrado ? : ");
      String? nome = stdin.readLineSync();
      print(
          "Como o funcinário se identifica a respeito do seu gênero 'M', 'F' ou 'O' ? : ");
      String? sexo = stdin.readLineSync();
      condicao3 = true;
      if (sexo != "M" && sexo != "F" && sexo != "O") {
        while (condicao3) {
          print(
              "Favor utilizar um dos gêneros apresentados 'M', 'F', 'O', digite novamente : ");
          String? sexo = stdin.readLineSync();
          if (sexo == "M" || sexo == "F" || sexo == "O") {
            condicao3 = false;
          }
        }
      }
      print("Qual a idade do funcionário ? : ");
      int idade = int.parse(stdin.readLineSync()!);
      print(
          "Qual a data(formato AnoMêsDia nessa ordem, tudo junto) de admissão do funcionário ? : ");
      DateTime admissao = DateTime.parse(stdin.readLineSync()!);
      print("Qual o salário do funcionário ? ");
      double salario = double.parse(stdin.readLineSync()!);
      print("O funcionário tem filhos ? (1 - sim, 2 - não) : ");
      int input = int.parse(stdin.readLineSync()!);
      bool condicao2 = true;
      if (input == 1) {
        while (condicao2) {
          print("Qual o nome do filho(a) ? : ");
          String? nome1 = stdin.readLineSync();
          print("Qual a idade do filho(a) ? : ");
          int idade1 = int.parse(stdin.readLineSync()!);
          print("Qual o sexo do filho(a) 'M' ou 'F' ? : ");
          String? sexo1 = stdin.readLineSync();
          bool condicao4 = true;
          if (sexo1 != "M" && sexo1 != "F") {
            while (condicao4) {
              print(
                  "Favor utilizar um dos gêneros indicados 'M' ou 'F', digite novamente : ");
              String? sexo1 = stdin.readLineSync();
              if (sexo1 == "M" || sexo1 == "F") {
                condicao4 = false;
              }
            }
          }
          Dependente filho = Dependente(nome1!, sexo1, idade1);
          filhos.add(filho);
          print("Tem outro filho(a) ? 1 - sim, 2 - não : ");
          int input4 = int.parse(stdin.readLineSync()!);
          if (input4 == 2) {
            condicao2 = false;
          }
        }
      }
      Pessoa funcionario =
          Pessoa(nome!, sexo!, idade, admissao, salario, filhos);
      funcionarios[posicao2 - 1] = funcionario;
      funcionario.apresenta();
    }
    if (opcao == 3) {
      print(
          "Digite o número correspondente ao funcionário a ser removido da empresa : ");
      int posicao1 = int.parse(stdin.readLineSync()!);
      funcionarios.removeAt(posicao1 - 1);
      print("Funcionário removido com sucesso !");
    }
    if (opcao == 4) {
      print(
          "Digite o número correspondente ao funcionário a ser apresentada a ficha(checar na opção 5): ");
      int posicao = int.parse(stdin.readLineSync()!);
      Pessoa funcionario1 = funcionarios[posicao - 1];
      print(
          "Ficha do funcionário selecionado nome: ${funcionario1.nome}, sexo: ${funcionario1.sexo}, idade: ${funcionario1.idade}, data de admissão: ${funcionario1.admissao}, com um salário de ${funcionario1.salario} e os filhos são: ");
      funcionario1.filhosap();
    }
    if (opcao == 5) {
      int x = 1;
      funcionarios.forEach((funcionario) {
        print("O $x° funcinário é: ${funcionario.nome}");
        x++;
      });
    }
    if (opcao == 6) {
      print("A empresa possui: ${funcionarios.length} funcionários.");
    }
    if (opcao == 7) {
      print("Programa finalizado ! ");
      condicao = false;
    }
  }
}

class Pessoa {
  String? nome = '';
  String? sexo = '';
  int idade = 0;
  DateTime? admissao;
  double salario = 0;
  List<Dependente> filhos = [];

  Pessoa(String? nome, String? sexo, int idade, DateTime admissao,
      double salario, List<Dependente> filhos) {
    this.nome = nome;
    this.sexo = sexo;
    this.idade = idade;
    this.admissao = admissao;
    this.salario = salario;
    this.filhos = filhos;
  }
  String? apresenta() {
    print(
        "O funcionário ${this.nome} tem ${this.idade} anos, é do sexo ${this.sexo}, foi admitido na data ${this.admissao}, possui um salário de ${this.salario} e seus filhos são: ");
    filhos.forEach(
      (filho) {
        print(filho.nome1);
      },
    );
  }

  String? filhosap() {
    filhos.forEach((filho) {
      print(filho.nome1);
    });
  }
}

class Dependente {
  String? nome1 = '';
  String? sexo1 = '';
  int idade1 = 0;

  Dependente(String nome1, String? sexo1, int idade1) {
    this.nome1 = nome1;
    this.sexo1 = sexo1;
    this.idade1 = idade1;
  }
}
