import 'package:enemize/controller/palavras_giradas_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheel_picker/wheel_picker.dart';

class RoletaSemPack extends StatelessWidget {
  const RoletaSemPack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class RoletaRBW extends StatelessWidget {
  const RoletaRBW({super.key, required this.numeroDaRoleta});

  final int numeroDaRoleta;

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PalavrasGiradasController>();

    return SizedBox(
      height: 250,
      width: 40,
      child: WheelPicker(
        itemCount: controller.numeroDeLetras(numeroDaRoleta),
        builder: (context, index) => Badge.count(
          textColor: Colors.white,
          count: controller.qtdeDeLetras(),
          child: Text(controller.letraNaPosicao(numeroDaRoleta, index)),
        ),
        selectedIndexColor: Colors.black,
        looping: true,
        onIndexChanged: (index, _) {
          controller.selecionarLetra(coluna: numeroDaRoleta, indice: index);
        },
        style: WheelPickerStyle(
          squeeze: 1.25,
          diameterRatio: .8,
          surroundingOpacity: .25,
          magnification: 1.2,
          itemExtent: 50,
        ),
      ),
    );
  }
}
