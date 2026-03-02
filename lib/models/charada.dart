import 'package:enemize/models/card.dart';

class Charada {
  String pergunta;
  String resposta;
  Card card;
  String disciplina;
  bool respondida;
  Charada({
    required this.pergunta,
    required this.resposta,
    required this.card,
    required this.disciplina,
    this.respondida = false,
  });
}
