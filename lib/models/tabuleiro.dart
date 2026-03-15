import 'package:enemize/models/roleta.dart';

class Tabuleiro {
  List<String> respostas;
  late List<Roleta> roletas;
  Tabuleiro(this.respostas) {
    roletas = gerarRoletas;
  }

  int get numeroDeRoletas => respostas.first.length;

  String get tentativaAtual => roletas.map((roleta) => roleta.letraSelecionada).join();

  List<Roleta> get gerarRoletas =>
      List.generate(numeroDeRoletas, (index) => Roleta(respostas.map((resposta) => resposta[index]).toList()));

  int numeroDeLetras(int roleta) => roletas[roleta].numeroDeLetras;

  String letraNaPosicao(int roleta, int index) => roletas[roleta].letraNaPosicao(index);

  void atualizar(int roleta, int letra) => roletas[roleta].atualizar(letra);

  void subtrairLetras() {
    for (var roleta in roletas) {
      roleta.subtrairLetra();
    }
  }

  @override
  String toString() {
    return roletas.join('\n');
  }
}
