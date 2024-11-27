import 'package:app_trenes/src/widgets/header_widget.dart';
import 'package:app_trenes/src/widgets/lista_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 32, 32, 32),
        body: Column(
          children: const <Widget>[
            Headerwidget(),
            Listacursos(),
            ListaCursosConCheckbox(),
          ],
        ));
  }
}
