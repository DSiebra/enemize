import 'package:enemize/models/charada.dart';

class Desafio {
  List<Charada> charadas;
  Desafio({required this.charadas});

  int get qtdeCharadas => charadas.length;

  List<String> get perguntas => charadas.map((charada) => charada.pergunta).toList();
  List<String> get respostas => charadas.map((charada) => charada.resposta).toList();
}
