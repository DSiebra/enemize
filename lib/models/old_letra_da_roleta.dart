enum EstadoDaLetra { emJogo, zerada }

class OldLetraDaRoleta {
  String letra;
  int quantidade;
  EstadoDaLetra estado = EstadoDaLetra.emJogo;
  OldLetraDaRoleta({required this.letra, required this.quantidade});

  bool get zerado => estado == EstadoDaLetra.zerada;

  void diminuir() {
    quantidade--;
    zerar();
  }

  void zerar() {
    if (quantidade <= 0) {
      estado = EstadoDaLetra.zerada;
    }
  }

  @override
  String toString() {
    return 'Letra: $letra, Quant: $quantidade, Estado: $estado';
  }
}
