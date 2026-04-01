import 'package:enemize/shared/models/card_de_estudo.dart';
import 'package:enemize/utils/string_extension.dart';

class Charada {
  String pergunta;
  String resposta;
  CardDeEstudo card;
  String disciplina;
  bool respondida;
  Charada({
    required this.pergunta,
    required this.resposta,
    required this.card,
    required this.disciplina,
    this.respondida = false,
  }) {
    respostaSemAcentos = resposta.normalizar();
  }
  String respostaSemAcentos = '';
  bool conferir(String tentativa) {
    if (tentativa == respostaSemAcentos) {
      respondida = true;
      return true;
    }
    return false;
  }
}
