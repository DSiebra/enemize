import 'package:enemize/palavras_giradas/tabuleiro/tabuleiro.dart';

class JogoPalavrasGiradas {
  //DesafioDoDia
  late Tabuleiro tabuleiro;

  //Tabuleiro
  String get tentativa => tabuleiro.tentativa;
  int get quantidadeDeRoletas => tabuleiro.quantidadeDeRoletas;

  void atualizarTabuleiro(int roleta, int letra) => tabuleiro.atualizar(roleta, letra);
}
