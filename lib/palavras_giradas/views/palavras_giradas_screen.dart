import 'package:enemize/palavras_giradas/widgets/roleta_widget.dart';
import 'package:flutter/material.dart';

class PalavrasGiradasScreen extends StatefulWidget {
  const PalavrasGiradasScreen({super.key});

  @override
  State<PalavrasGiradasScreen> createState() => _PalavrasGiradasScreenState();
}

class _PalavrasGiradasScreenState extends State<PalavrasGiradasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Palavras Giradas')),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(color: Colors.blueGrey, child: RoletaWidget(posicaoDaRoleta: 1)),
          ),
          Expanded(flex: 2, child: Container(color: Colors.deepOrangeAccent)),
          Expanded(flex: 2, child: Container(color: Colors.greenAccent)),
        ],
      ),
    );
  }
}
