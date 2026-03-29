import 'package:enemize/palavras_giradas/controller/palavras_giradas_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PainelDePerguntasWidget extends StatelessWidget {
  const PainelDePerguntasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PalavrasGiradasController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: IconButton(
            iconSize: 32,
            onPressed: () => controller.charadaAnterior(),
            icon: const Icon(Icons.keyboard_arrow_left_outlined),
          ),
        ),
        Expanded(
          child: Text(controller.pergunta, style: const TextStyle(fontSize: 16), textAlign: TextAlign.left),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: IconButton(
            iconSize: 32,
            onPressed: () => controller.charadaPosterior(),
            icon: const Icon(Icons.keyboard_arrow_right_outlined),
          ),
        ),
      ],
    );
  }
}
