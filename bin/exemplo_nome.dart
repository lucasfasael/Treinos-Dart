import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NomePessoa extends StatefulWidget {
  const NomePessoa({Key? key}) : super(key: key);

  @override
  State<NomePessoa> createState() => _NomePessoaState();
}

class _NomePessoaState extends State<NomePessoa> {
  TextEditingController field1 = TextEditingController();
  TextEditingController field2 = TextEditingController();
  Color corPrimaria = Color(0xDD5227FF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: corPrimaria,
      ),
      body: Column(children: [
        TextField(
          controller: field1,
          decoration: InputDecoration(hintText: "Digite o seu primeiro nome: "),
        ),
        TextField(
          controller: field2,
          decoration: InputDecoration(hintText: "Digite o seu primeiro nome: "),
        ),
        Text("O seu nome é: ${field1.text} ${field2.text}"),
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: corPrimaria,
        onPressed: () => setState(() {}),
      ),
    );
  }
}
