import 'package:enemize/models/desafio_do_dia.dart';
import 'package:enemize/models/tabuleiro.dart';

class PalavrasGiradas {
  DesafioDoDia desafio;
  late Tabuleiro tabuleiro;

  PalavrasGiradas({required this.desafio}) {
    tabuleiro = Tabuleiro(desafio.respostas);
  }

  String get tentativaAtual => tabuleiro.tentativaAtual;

  bool get conferir {
    if (desafio.conferir(tentativaAtual)) {
      tabuleiro.subtrairLetras();
      return true;
    }
    return false;
  }

  int get numeroDeRoletas => tabuleiro.numeroDeRoletas;

  int numeroDeLetras(int roleta) => tabuleiro.numeroDeLetras(roleta);

  String letraNaPosicao(int roleta, int index) => tabuleiro.letraNaPosicao(roleta, index);

  void charadaAnterior() => desafio.charadaAnterior();
  void charadaPosterior() => desafio.charadaPosterior();

  void atualizarTabuleiro(int roleta, int letra) => tabuleiro.atualizar(roleta, letra);
}
