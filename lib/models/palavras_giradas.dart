import 'package:enemize/models/desafio.dart';
import 'package:enemize/models/tabuleiro.dart';

class PalavrasGiradas {
  Desafio desafio;
  late Tabuleiro tabuleiro;
  int indiceAtual = 0;

  PalavrasGiradas({required this.desafio}) {
    tabuleiro = Tabuleiro(desafio.respostas);
  }

  //Classe Jogo
  // TABULEIRO
  //PAINEL DE PERGUNTAS
  //STATE DO JOGO, JOGANDO, VERIFICANDO, FIMDEJOGO
}
