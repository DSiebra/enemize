import 'package:enemize/palavras_giradas/controller/palavras_giradas_controller.dart';
import 'package:enemize/palavras_giradas/widgets/painel_de_perguntas_widget.dart';
import 'package:enemize/palavras_giradas/widgets/tabuleiro_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PalavrasGiradasScreen extends StatefulWidget {
  const PalavrasGiradasScreen({super.key});

  @override
  State<PalavrasGiradasScreen> createState() => _PalavrasGiradasScreenState();
}

class _PalavrasGiradasScreenState extends State<PalavrasGiradasScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PalavrasGiradasController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Palavras Giradas', style: TextStyle(color: Color(0xff2A5199))),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TabuleiroWidget(),
          PainelDePerguntasWidget(),
          FilledButton(
            onPressed: () {
              controller.conferir();
            },
            child: Text('Conferir'),
          ),
        ],
      ),
    );
  }
}

class Main {}
