import 'package:enemize/palavras_giradas/models/card.dart';
import 'package:enemize/palavras_giradas/models/charada.dart';

class DesafioDiario {
  List<Charada> charadas;
  int index = 0;
  DesafioDiario(this.charadas);

  int get quantidadeDeCharadas => charadas.length;

  Charada get charada => charadas[index];

  Card get cardDeEstudo => charadas[index].card;

  String get pergunta => charadas[index].pergunta;

  List<String> get respostas => charadas.map((charada) => charada.respostaSemAcentos).toList();

  bool conferir(String tentativa) => charada.conferir(tentativa);

  void charadaPosterior() {
    if (index >= quantidadeDeCharadas - 1) {
      index = 0;
    } else {
      index++;
    }
  }

  void charadaAnterior() {
    if (index <= 0) {
      index = quantidadeDeCharadas - 1;
    } else {
      index--;
    }
  }
}
