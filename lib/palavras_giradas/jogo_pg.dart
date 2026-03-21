import 'package:enemize/models/desafio_do_dia.dart';
import 'package:enemize/palavras_giradas/tabuleiro/letra_da_roleta.dart';
import 'package:enemize/palavras_giradas/tabuleiro/tabuleiro.dart';

class JogoPG {
  DesafioDoDia desafio;
  late Tabuleiro tabuleiro;

  JogoPG(this.desafio) {
    tabuleiro = Tabuleiro.fromRespostas(desafio.respostas);
  }

  //TABULEIRO
  LetraDaRoleta letraNaPosicao(int roleta, int index) => tabuleiro.letraNaPosicao(roleta, index);

  String get tentativa => tabuleiro.tentativa;

  int get quantidadeDeRoletas => tabuleiro.quantidadeDeRoletas;

  int quantidadeDeLetras(int roleta) => tabuleiro.quantidadeDeLetrasDaRoleta(roleta);

  void atualizarTabuleiro(int roleta, int letra) => tabuleiro.atualizar(roleta, letra);

  //DESAFIO
}
