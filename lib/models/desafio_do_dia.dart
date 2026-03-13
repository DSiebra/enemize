import 'package:enemize/models/charada.dart';

class DesafioDoDia {
  List<Charada> charadas;
  int index = 0;
  DesafioDoDia({required this.charadas});

  int get qtdeCharadas => charadas.length;

  String get perguntaAtual => charadaAtual.pergunta;

  Charada get charadaAtual => charadas[index];

  void charadaPosterior() {
    if (index >= qtdeCharadas - 1) {
      index = 0;
    } else {
      index++;
    }
  }

  void charadaAnterior() {
    if (index <= 0) {
      index = qtdeCharadas - 1;
    } else {
      index--;
    }
  }

  bool conferir(String tentativa) => charadaAtual.conferir(tentativa);

  String cardDaCharada() => charadaAtual.card.conteudo;

  List<String> get respostas => charadas.map((charada) => charada.respostaSemAcentos).toList();
}
