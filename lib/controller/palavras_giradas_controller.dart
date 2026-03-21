import 'package:enemize/models/jogo_palavras_giradas.dart';
import 'package:enemize/palavras_giradas/jogo_pg.dart';
import 'package:enemize/palavras_giradas/tabuleiro/letra_da_roleta.dart';
import 'package:flutter/material.dart';

class PalavrasGiradasController extends ChangeNotifier {
  final PalavrasGiradas oldJogo;
  final JogoPG jogo;

  PalavrasGiradasController(this.oldJogo, this.jogo);

  //novos controles

  LetraDaRoleta letraNaPosicao(int roleta, int index) => jogo.letraNaPosicao(roleta, index);

  void atualizarTabuleiro(int roleta, int letra) {
    jogo.atualizarTabuleiro(roleta, letra);
    notifyListeners();
  }

  //FIM
  int get numeroDeRoletas => oldJogo.numeroDeRoletas;

  int numeroDeLetras(int roleta) => oldJogo.numeroDeLetras(roleta);

  String oldletraNaPosicao(int roleta, int index) => oldJogo.letraNaPosicao(roleta, index);
  int qtdeDeLetras(int roleta, int index) => oldJogo.qtdLetras(roleta, index);

  void charadaPosterior() {
    oldJogo.charadaPosterior();
    notifyListeners();
  }

  void charadaAnterior() {
    oldJogo.charadaAnterior();
    notifyListeners();
  }

  void selecionarLetra({required int coluna, required int indice}) {
    oldJogo.atualizarTabuleiro(coluna, indice);
    notifyListeners();
  }

  void checarTentativa() {
    print(oldJogo.toString());
    if (oldJogo.conferir) {
      print('show');

      print(oldJogo.toString());
    } else {}
    notifyListeners();
  }
}
