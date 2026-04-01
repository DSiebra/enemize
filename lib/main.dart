import 'package:enemize/banco_dados.dart';
import 'package:enemize/palavras_giradas/controller/palavras_giradas_controller.dart';
import 'package:enemize/palavras_giradas/models/desafio_do_dia.dart';
import 'package:enemize/palavras_giradas/models/jogo_palavras_giradas.dart';
import 'package:enemize/palavras_giradas/views/palavras_giradas_screen.dart';
import 'package:enemize/cards/controller/colecao_cards_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ColecaoCardsController()),
        ChangeNotifierProvider(
          create: (context) {
            final colecaoCards = context.read<ColecaoCardsController>();
            final desafio = DesafioDoDia(bancoDeDados);
            final jogoNovo = JogoPalavrasGiradas(desafio);
            return PalavrasGiradasController(jogoNovo, colecaoCards);
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
    //final controller = context.watch<PalavrasGiradasController>();
    return MaterialApp(
      home: PalavrasGiradasScreen() /* Scaffold(
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
      ), */,
    );
  }
}
