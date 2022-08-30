import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:primeiro_projeto/exemplo_nome.dart';
import 'package:primeiro_projeto/meu_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lufe Teacher',
      home: MeuApp(),
    );
  }
}
