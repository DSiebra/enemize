class PainelDePerguntas {
  List<String> perguntas;
  int index = 0;
  PainelDePerguntas({required this.perguntas});

  String get perguntaAtual => perguntas[index];
}
