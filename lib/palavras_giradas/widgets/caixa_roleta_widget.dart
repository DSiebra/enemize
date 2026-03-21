import 'package:enemize/palavras_giradas/tabuleiro/letra_da_roleta.dart';
import 'package:flutter/material.dart';

class CaixaDaRoletaWidget extends StatelessWidget {
  const CaixaDaRoletaWidget({super.key, required this.letra});
  final LetraDaRoleta letra;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
      child: Center(
        child: Text(
          letra.letra,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: letra.zerado ? Colors.green : Colors.black,
          ),
        ),
      ),
    );
  }
}
