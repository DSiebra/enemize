import 'package:enemize/models/roleta.dart';

class Tabuleiro {
  List<String> respostas;
  late List<Roleta> roletas;
  Tabuleiro(this.respostas) {
    roletas = gerarRoletas();
    embaralharColunas();
  }

  int get qtdeDeColunas => respostas.first.length;
  String get respostaAtual => roletas.map((roleta) => roleta.letraSelecionada).join();

  List<Roleta> gerarRoletas() =>
      List.generate(qtdeDeColunas, (index) => Roleta(respostas.map((resposta) => resposta[index]).toList()));

  void embaralharColunas() {
    for (var roleta in roletas) {
      roleta.embaralhar();
    }
  }

  void atualizar(int roleta, int letra) {
    roletas[roleta].atualizar(letra);
  }
}
