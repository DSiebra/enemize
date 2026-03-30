import 'package:enemize/palavras_giradas/models/card.dart';
import 'package:enemize/palavras_giradas/models/charada.dart';

class DesafioDoDia {
  List<Charada> charadas;
  int index = 0;
  DesafioDoDia(this.charadas);

  int get quantidadeDeCharadas => charadas.length;

  Charada get charada => charadas[index];

  Card get cardDeEstudo => charadas[index].card;

  String get pergunta => charadas[index].pergunta;

  List<String> get respostas => charadas.map((charada) => charada.respostaSemAcentos).toList();

  bool conferir(String tentativa) {
    if (charada.respondida) {
      print('já foi respondida, mostrar botão do card ao invés do conferir');
    }
    if (!charada.respondida) {
      print(tentativa);
      return charada.conferir(tentativa);
    }
    return false;
  }

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
