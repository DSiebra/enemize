import 'package:enemize/controller/palavras_giradas_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheel_picker/wheel_picker.dart';

class RoletaSemPack extends StatelessWidget {
  const RoletaSemPack({super.key, required this.numeroDaRoleta});
  final int numeroDaRoleta;
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PalavrasGiradasController>();

    return SizedBox(
      height: 250,
      width: 40,
      child: ListWheelScrollView.useDelegate(
        physics: const FixedExtentScrollPhysics(),
        itemExtent: 50,
        diameterRatio: .8,
        squeeze: 1.25,
        useMagnifier: true,
        magnification: 1.2,
        onSelectedItemChanged: (index) {
          final total = controller.numeroDeLetras(numeroDaRoleta);
          final realIndex = index % total;

          controller.selecionarLetra(coluna: numeroDaRoleta, indice: realIndex);
        },
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: null, //controller.numeroDeLetras(numeroDaRoleta),
          builder: (context, index) {
            final total = controller.numeroDeLetras(numeroDaRoleta);
            final realIndex = index % total;
            return Center(
              child: Badge.count(
                count: controller.qtdeDeLetras(numeroDaRoleta, realIndex),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(6)),
                  child: Text(controller.letraNaPosicao(numeroDaRoleta, realIndex)),
                ),
              ),
            );
          },
        ),
      ),
    );
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
          count: 2,
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
          surroundingOpacity: 1,
          magnification: 1.2,
          itemExtent: 50,
        ),
      ),
    );
  }
}
