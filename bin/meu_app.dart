//LINHA DO TOC
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MeuApp extends StatefulWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  int teste = 5;
  String somar(String n1, String n2) {
    return (int.parse(n1) + int.parse(n2)).toString();
  }

  String subtrair(String n1, String n2) {
    return (int.parse(n1) - int.parse(n2)).toString();
  }

  String multiplicar(String n1, String n2) {
    return (int.parse(n1) * int.parse(n2)).toString();
  }

  String dividir(String n1, String n2) {
    return (int.parse(n1) / int.parse(n2)).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora Bolada"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            TextField(
              controller: n1Controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            TextField(
              controller: n2Controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            Row(
              children: [
                InkWell(
                  child: Icon(Icons.add),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          String resultado =
                              somar(n1Controller.text, n2Controller.text);
                          return AlertDialog(title: Text(resultado));
                        });
                  },
                ),
                InkWell(
                  child: Icon(Icons.remove),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text((int.parse(n1Controller.text) -
                                    int.parse(n2Controller.text))
                                .toString()),
                          );
                        });
                  },
                ),
                InkWell(
                  child: Icon(Icons.star),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text((int.parse(n1Controller.text) *
                                    int.parse(n2Controller.text))
                                .toString()),
                          );
                        });
                  },
                ),
              ],
            )
          ],
        ));
  }
}
