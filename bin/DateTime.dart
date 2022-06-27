import 'dart:io';

//comandos
//DateTime iniciodasferias = DateTime(2022, 6, 4);
//DateTime fimdasferias = DateTime(2022, 6, 4);
//if(iniciodasferias.isBefore(DateTime(2050, 4, 4)) && fimdasferias.isAfter(DateTime(1800, 4, 4))){
//print("algo")}
void main(List<String> args) {
  print("Quando o funcionário foi admitido ? : ");
  DateTime admissao = DateTime.parse(stdin.readLineSync()!);
  DateTime ferias =
      DateTime(admissao.year + 2, admissao.month, admissao.day - 1);
  print("O fúncionario precisará tirar férias até: $ferias");
}
