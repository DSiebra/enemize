import 'package:enemize/banco_dados.dart';
import 'package:enemize/models/desafio.dart';
import 'package:enemize/models/palavras_giradas.dart';
import 'package:enemize/controller/palavras_giradas_controller.dart';
import 'package:enemize/models/roleta.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheel_picker/wheel_picker.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            final desafio = Desafio(charadas: bancoDeDados);
            final jogo = PalavrasGiradas(desafio: desafio);
            return PalavrasGiradasController(jogo);
          },
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PalavrasGiradasController>();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff6f3ec),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [...List.generate(controller.qtdeRoletas, (index) => RoletaDeLetras(numeroDaRoleta: index))],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoletaDeLetras extends StatelessWidget {
  const RoletaDeLetras({super.key, required this.numeroDaRoleta});
  final int numeroDaRoleta;

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PalavrasGiradasController>();
    Roleta roleta = controller.roletaDeLetras(numeroDaRoleta);
    return SizedBox(
      height: 250,
      width: 40,
      child: WheelPicker(
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
      ),
    );
  }
}
