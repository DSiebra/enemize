import 'package:enemize/palavras_giradas/models/desafio_do_dia.dart';
import 'package:enemize/palavras_giradas/models/tabuleiro/letra_da_roleta.dart';
import 'package:enemize/palavras_giradas/models/tabuleiro/tabuleiro.dart';
import 'package:enemize/palavras_giradas/models/estado_jogo.dart';

class JogoPalavrasGiradas {
  DesafioDoDia desafio;
  late Tabuleiro tabuleiro;

  JogoPalavrasGiradas(this.desafio) {
    tabuleiro = Tabuleiro.fromRespostas(desafio.respostas);
  }

  //TABULEIRO
  LetraDaRoleta letraNaPosicao(int roleta, int index) => tabuleiro.letraNaPosicao(roleta, index);

  String get tentativa => tabuleiro.tentativa;

  int get quantidadeDeRoletas => tabuleiro.quantidadeDeRoletas;

  int quantidadeDeLetras(int roleta) => tabuleiro.quantidadeDeLetrasDaRoleta(roleta);

  void atualizarTabuleiro(int roleta, int letra) => tabuleiro.atualizar(roleta, letra);

  //DESAFIO
  void charadaAnterior() => desafio.charadaAnterior();
  void charadaPosterior() => desafio.charadaPosterior();

  String get pergunta => desafio.pergunta;

  EstadoJogo conferir() {
    if (tabuleiro.temLetraZerada) {
      return EstadoJogo.letraZerada;
    }
    if (desafio.conferir(tentativa)) {
      tabuleiro.subtrairLetras();
      if (desafio.finalizado) {
         return EstadoJogo.finalizado;
      }
      return EstadoJogo.correto;
    }
    return EstadoJogo.erro;
  }
}
