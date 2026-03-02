class Roleta {
  List<String> letras;
  int index = 0;
  Roleta(this.letras);

  String get letraSelecionada => letras[index];
  int get qtdeDeLetras => letras.length;

  void atualizar(int index) => this.index = index;

  void embaralhar() => letras.shuffle();
  //serve para popular a wheel com todas as letras da lista
  String letraNaPosicao(int i) => letras[i];
}
