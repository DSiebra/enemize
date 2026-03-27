import 'package:enemize/palavras_giradas/controller/palavras_giradas_controller.dart';
import 'package:enemize/palavras_giradas/widgets/roleta_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabuleiroWidget extends StatelessWidget {
  const TabuleiroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PalavrasGiradasController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.arrow_right, size: 40),
        ...List.generate(controller.quantidadeDeRoletas, (index) => RoletaWidget(posicaoDaRoleta: index)),
        const Icon(Icons.arrow_left, size: 40),
      ],
    );
  }
}
