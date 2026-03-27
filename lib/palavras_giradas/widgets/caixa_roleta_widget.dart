import 'package:enemize/palavras_giradas/models/tabuleiro/letra_da_roleta.dart';
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
            fontSize: 24,
            fontWeight: FontWeight.bold,

            color: letra.zerado ? Color(0xff777B83) : Color(0xff08101F),
          ),
        ),
      ),
    );
  }
}
