import 'package:enemize/controller/palavras_giradas_controller.dart';
import 'package:enemize/views/rbw_roleta.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RascunhoBW extends StatefulWidget {
  const RascunhoBW({super.key});

  @override
  State<RascunhoBW> createState() => _RascunhoBWState();
}

class _RascunhoBWState extends State<RascunhoBW> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PalavrasGiradasController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(controller.numeroDeRoletas, (index) => RoletaSemPack(numeroDaRoleta: index)),
            ),

            Row(
              children: [
                IconButton(
                  onPressed: () {
                    controller.charadaAnterior();
                  },
                  icon: Icon(Icons.keyboard_arrow_left_outlined),
                ),
                Flexible(
                  child: Container(color: Colors.white70, child: Text(controller.oldJogo.desafio.perguntaAtual)),
                ),
                IconButton(
                  onPressed: () {
                    controller.charadaPosterior();
                  },
                  icon: Icon(Icons.keyboard_arrow_right_outlined),
                ),
              ],
            ),
            SizedBox(height: 50),
            FilledButton(
              onPressed: () {
                controller.checarTentativa();
              },
              child: Text('Conferir'),
            ),
            /*  SizedBox(height: 50),
            Text(controller.jogo.tabuleiro.respostaAtual),
            SizedBox(height: 50),
            Text(controller.resultado), */
          ],
        ),
      ),
    );
  }
}
