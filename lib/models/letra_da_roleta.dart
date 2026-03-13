enum EstadoDaLetra { emJogo, zerada }

class LetraDaRoleta {
  String letra;
  int quantidade;
  EstadoDaLetra estado = EstadoDaLetra.emJogo;
  LetraDaRoleta({required this.letra, required this.quantidade});

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
}
