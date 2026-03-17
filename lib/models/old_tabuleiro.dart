import 'package:enemize/models/old_roleta.dart';

class TabuleiroOld {
  List<String> respostas;
  late List<OldRoleta> roletas;
  TabuleiroOld(this.respostas) {
    roletas = gerarRoletas;
  }

  int get numeroDeRoletas => respostas.first.length;

  String get tentativaAtual => roletas.map((roleta) => roleta.letraSelecionada).join();

  List<OldRoleta> get gerarRoletas =>
      List.generate(numeroDeRoletas, (index) => OldRoleta(respostas.map((resposta) => resposta[index]).toList()));

  int numeroDeLetras(int roleta) => roletas[roleta].numeroDeLetras;

  String letraNaPosicao(int roleta, int index) => roletas[roleta].letraNaPosicao(index);
  int qtdeLetras(int roleta, int index) => roletas[roleta].qtdeLetras(index);
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
