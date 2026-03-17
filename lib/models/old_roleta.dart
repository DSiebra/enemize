import 'package:enemize/models/old_letra_da_roleta.dart';

class OldRoleta {
  List<String> listDeLetras;
  int index = 0;
  late List<OldLetraDaRoleta> letrasNaRoleta;
  late List<String> letras;

  OldRoleta(this.listDeLetras) {
    letrasNaRoleta = criarLetrasDoMap();
    letras = letrasMapeadaseListadas();
    letras.shuffle();
  }

  String get letraSelecionada => letras[index];
  int get numeroDeLetras => letras.length;

  List<OldLetraDaRoleta> criarLetrasDoMap() =>
      mapear().entries.map((e) => OldLetraDaRoleta(letra: e.key, quantidade: e.value)).toList();

  List<String> letrasMapeadaseListadas() => letrasNaRoleta.map((elemento) => elemento.letra).toList();

  Map<String, int> mapear() {
    Map<String, int> result = {};
    for (var letra in listDeLetras) {
      result.update(letra, (value) => value + 1, ifAbsent: () => 1);
    }
    return result;
  }

  //serve para popular a wheel com todas as letras da lista
  String letraNaPosicao(int index) => letras[index];
  int qtdeLetras(int index) {
    return letrasNaRoleta.firstWhere((letra) => letra.letra == letras[index]).quantidade;
  }

  void atualizar(int index) => this.index = index;

  void subtrairLetra() {
    letrasNaRoleta.firstWhere((e) => e.letra == letraSelecionada).diminuir();
  }

  @override
  String toString() {
    return letrasNaRoleta.join('\n');
  }
}
