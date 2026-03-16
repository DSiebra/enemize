import 'package:enemize/models/letra_da_roleta.dart';

class Roleta {
  List<String> listDeLetras;
  int index = 0;
  late List<LetraDaRoleta> letrasNaRoleta;
  late List<String> letras;

  Roleta(this.listDeLetras) {
    letrasNaRoleta = criarLetrasDoMap();
    letras = letrasMapeadaseListadas();
    letras.shuffle();
  }

  String get letraSelecionada => letras[index];
  int get numeroDeLetras => letras.length;

  List<LetraDaRoleta> criarLetrasDoMap() =>
      mapear().entries.map((e) => LetraDaRoleta(letra: e.key, quantidade: e.value)).toList();

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
  int qtdeLetras(int index) => letrasNaRoleta[index].quantidade;

  void atualizar(int index) => this.index = index;

  void subtrairLetra() {
    letrasNaRoleta.firstWhere((e) => e.letra == letraSelecionada).diminuir();
  }

  @override
  String toString() {
    return letrasNaRoleta.join('\n');
  }
}
