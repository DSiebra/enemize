import 'package:enemize/models/palavras_giradas.dart';
import 'package:enemize/models/roleta.dart';
import 'package:enemize/models/tabuleiro.dart';
import 'package:flutter/material.dart';

class PalavrasGiradasController extends ChangeNotifier {
  final PalavrasGiradas jogo;
  PalavrasGiradasController(this.jogo);

  Tabuleiro get tabuleiro => jogo.tabuleiro;
  int get qtdeRoletas => tabuleiro.qtdeDeColunas;

  Roleta roletaDeLetras(int index) => tabuleiro.roletas[index];

  void selecionarLetra({required int coluna, required int indice}) {
    tabuleiro.atualizar(coluna, indice);
  }
}
