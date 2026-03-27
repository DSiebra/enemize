import 'package:enemize/palavras_giradas/controller/palavras_giradas_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PainelDePerguntasWidget extends StatelessWidget {
  const PainelDePerguntasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PalavrasGiradasController>();
    return Row(
      children: [
        IconButton(
          onPressed: () {
            controller.charadaAnterior();
          },
          icon: Icon(Icons.keyboard_arrow_left_outlined),
        ),
        Flexible(
          child: Container(
            color: Colors.white70,
            child: Text(controller.pergunta, style: TextStyle(fontSize: 16)),
          ),
        ),
        IconButton(
          onPressed: () {
            controller.charadaPosterior();
          },
          icon: Icon(Icons.keyboard_arrow_right_outlined),
        ),
      ],
    );
  }
}
