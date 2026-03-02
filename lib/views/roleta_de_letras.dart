import 'package:enemize/controller/palavras_giradas_controller.dart';
import 'package:enemize/models/roleta.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheel_picker/wheel_picker.dart';

class RoletaDeLetrasNew extends StatelessWidget {
  const RoletaDeLetrasNew({super.key, required this.numeroDaRoleta});
  final int numeroDaRoleta;

  @override
  Widget build(BuildContext context) {
    final controller = context.read<PalavrasGiradasController>();
    Roleta roleta = controller.roletaDeLetras(numeroDaRoleta);
    return SizedBox(
      height: 250,
      width: 40,
      child: ValueListenableBuilder<int>(
        valueListenable: roleta.index,
        builder: (context, value, child) {
          return WheelPicker(
            itemCount: roleta.qtdeDeLetras,
            builder: (context, index) => Text(roleta.letraNaPosicao(index)),
            selectedIndexColor: Colors.blue,
            looping: true,
            onIndexChanged: (index, _) {
              controller.selecionarLetra(coluna: numeroDaRoleta, indice: index);
              print(controller.tabuleiro.respostaAtual);
            },
            style: WheelPickerStyle(
              squeeze: 1.25,
              diameterRatio: .8,
              surroundingOpacity: .25,
              magnification: 1.2,
              itemExtent: 50,
            ),
          );
        },
      ),
    );
  }
}
