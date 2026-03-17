import 'package:enemize/palavras_giradas/tabuleiro/letra_da_roleta.dart';

class Roleta {
  List<LetraDaRoleta> letras;
  int index = 0;

  Roleta({required this.letras});

  int get quantidadeDeLetrasDaRoleta => letras.length;

  String get letraAtual => letras[index].letra;

  void atualizar(int index) => this.index = index;

  void subtrairLetra() => letras[index].subtrair();

  // Retorna a letra usada para renderizar cada item da roleta na ListWheelScrollView
  LetraDaRoleta letraNaPosicao(int index) => letras[index];

  //construtor que recebe uma List<String> e transforma em List<LetraDaRoleta>
  //1 - map de <letra, quantidade> key-value
  //2 - result é List<LetraDaRoleta>
  factory Roleta.fromLetras(List<String> letras) {
    final letrasMapeadas = <String, int>{};

    for (final letra in letras) {
      letrasMapeadas.update(letra, (valor) => valor + 1, ifAbsent: () => 1);
    }

    final result = letrasMapeadas.entries
        .map((letra) => LetraDaRoleta(letra: letra.key, quantidade: letra.value))
        .toList();
    result.shuffle;
    return Roleta(letras: result);
  }
}
