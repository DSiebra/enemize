import 'package:enemize/palavras_giradas/controller/palavras_giradas_controller.dart';
import 'package:enemize/palavras_giradas/widgets/caixa_roleta_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RoletaWidget extends StatelessWidget {
  const RoletaWidget({super.key, required this.posicaoDaRoleta});
  final int posicaoDaRoleta;

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PalavrasGiradasController>();
    return SizedBox(
      height: 250,
      width: 45,
      child: ListWheelScrollView.useDelegate(
        physics: const FixedExtentScrollPhysics(),
        itemExtent: 50,
        diameterRatio: 0.8,
        squeeze: 1.25,
        overAndUnderCenterOpacity: 0.5,
        onSelectedItemChanged: (index) {
          controller.atualizarTabuleiro(posicaoDaRoleta, controller.indexDaLetra(index, posicaoDaRoleta));
        },
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) {
            return CaixaDaRoletaWidget(
              letra: controller.letraNaPosicao(posicaoDaRoleta, controller.indexDaLetra(index, posicaoDaRoleta)),
            );
          },
        ),
      ),
    );
  }
}
