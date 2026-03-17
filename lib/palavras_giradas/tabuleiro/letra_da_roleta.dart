enum EstadoDaLetra { emJogo, zerada }

class LetraDaRoleta {
  String letra;
  int quantidade;
  EstadoDaLetra estado = EstadoDaLetra.emJogo;

  LetraDaRoleta({required this.letra, required this.quantidade});

  bool get zerado => estado == EstadoDaLetra.zerada;

  void subtrair() {
    if (quantidade > 0) {
      quantidade--;
    }
    _zerar();
  }

  void _zerar() {
    if (quantidade <= 0) {
      estado = EstadoDaLetra.zerada;
    }
  }
}
