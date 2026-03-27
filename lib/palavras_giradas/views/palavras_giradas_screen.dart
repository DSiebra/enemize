import 'package:enemize/palavras_giradas/widgets/painel_de_perguntas_widget.dart';
import 'package:enemize/palavras_giradas/widgets/tabuleiro_widget.dart';
import 'package:flutter/material.dart';

class PalavrasGiradasScreen extends StatefulWidget {
  const PalavrasGiradasScreen({super.key});

  @override
  State<PalavrasGiradasScreen> createState() => _PalavrasGiradasScreenState();
}

class _PalavrasGiradasScreenState extends State<PalavrasGiradasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Palavras Giradas', style: TextStyle(color: Color(0xff2A5199))),
      ),
      body: Column(
        children: [
          Expanded(flex: 4, child: TabuleiroWidget()),
          Expanded(flex: 2, child: PainelDePerguntasWidget()),
          Expanded(
            flex: 2,
            child: FilledButton(
              onPressed: () {
                //controller.checarTentativa();
              },
              child: Text('Conferir'),
            ),
          ),
        ],
      ),
    );
  }
}
