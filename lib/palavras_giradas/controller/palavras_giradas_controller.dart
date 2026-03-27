import 'package:enemize/palavras_giradas/models/jogo_pg.dart';
import 'package:enemize/palavras_giradas/models/tabuleiro/letra_da_roleta.dart';
import 'package:flutter/material.dart';

class PalavrasGiradasController extends ChangeNotifier {
  final JogoPG jogo;

  PalavrasGiradasController(this.jogo);

  int indexDaLetra(int index, int roleta) => index % quantidadeDeLetras(roleta);

  int get quantidadeDeRoletas => jogo.quantidadeDeRoletas;
  int quantidadeDeLetras(int roleta) => jogo.quantidadeDeLetras(roleta);

  String get pergunta => jogo.pergunta;

  LetraDaRoleta letraNaPosicao(int roleta, int index) => jogo.letraNaPosicao(roleta, index);

  void atualizarTabuleiro(int roleta, int letra) {
    jogo.atualizarTabuleiro(roleta, letra);
    notifyListeners();
  }

  void charadaPosterior() {
    jogo.charadaPosterior();
    notifyListeners();
  }

  void charadaAnterior() {
    jogo.charadaAnterior();
    notifyListeners();
  }

  void checarTentativa() {
    if (jogo.conferir) {
    } else {}
    notifyListeners();
  }
}
