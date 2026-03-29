import 'package:enemize/palavras_giradas/controller/palavras_giradas_controller.dart';
import 'package:enemize/palavras_giradas/widgets/roleta_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabuleiroWidget extends StatelessWidget {
  const TabuleiroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PalavrasGiradasController>();
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(controller.quantidadeDeRoletas, (index) => RoletaWidget(posicaoDaRoleta: index)),
      ),
    );
  }
}
