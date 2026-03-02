import 'package:flutter/material.dart';

class Roleta {
  List<String> letras;
  //int index = 0;
  ValueNotifier<int> index = ValueNotifier(0);
  Roleta(this.letras);

  String get letraSelecionada => letras[index.value];
  int get qtdeDeLetras => letras.length;

  void atualizar(int index) => this.index.value = index;

  void embaralhar() => letras.shuffle();
  //serve para popular a wheel com todas as letras da lista
  String letraNaPosicao(int i) => letras[i];
}
