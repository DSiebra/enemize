import 'package:enemize/models/jogo_palavras_giradas.dart';
import 'package:flutter/material.dart';

class PalavrasGiradasController extends ChangeNotifier {
  final PalavrasGiradas jogo;
  PalavrasGiradasController(this.jogo);

  int get numeroDeRoletas => jogo.numeroDeRoletas;

  int numeroDeLetras(int roleta) => jogo.numeroDeLetras(roleta);

  String letraNaPosicao(int roleta, int index) => jogo.letraNaPosicao(roleta, index);
  int qtdeDeLetras(int roleta, int index) => jogo.qtdLetras(roleta, index);

  void charadaPosterior() {
    jogo.charadaPosterior();
    notifyListeners();
  }

  void charadaAnterior() {
    jogo.charadaAnterior();
    notifyListeners();
  }

  void selecionarLetra({required int coluna, required int indice}) {
    jogo.atualizarTabuleiro(coluna, indice);
    notifyListeners();
  }

  void checarTentativa() {
    print(jogo.toString());
    if (jogo.conferir) {
      print('show');

      print(jogo.toString());
    } else {}
    notifyListeners();
  }
}
