import 'package:enemize/palavras_giradas/models/jogo_palavras_giradas.dart';
import 'package:enemize/palavras_giradas/models/tabuleiro/letra_da_roleta.dart';
import 'package:enemize/palavras_giradas/models/estado_jogo.dart';
import 'package:enemize/cards/controller/colecao_cards_controller.dart';
import 'package:flutter/material.dart';

class PalavrasGiradasController extends ChangeNotifier {
  final JogoPalavrasGiradas jogo;
  final ColecaoCardsController colecaoCardsController;
  
  EstadoJogo _estadoAtual = EstadoJogo.aguardando;

  PalavrasGiradasController(this.jogo, this.colecaoCardsController);

  EstadoJogo get estadoAtual => _estadoAtual;
  bool get bloqueado => _estadoAtual != EstadoJogo.aguardando;

  int indexDaLetra(int index, int roleta) => index % quantidadeDeLetras(roleta);

  int get quantidadeDeRoletas => jogo.quantidadeDeRoletas;
  int quantidadeDeLetras(int roleta) => jogo.quantidadeDeLetras(roleta);

  String get pergunta => jogo.pergunta;

  LetraDaRoleta letraNaPosicao(int roleta, int index) => jogo.letraNaPosicao(roleta, index);

  void atualizarTabuleiro(int roleta, int letra) {
    if (bloqueado) return; // Evita qualquer tentativa fantasma de mover roleta na checagem
    jogo.atualizarTabuleiro(roleta, letra);
    notifyListeners();
  }

  void charadaPosterior() {
    if (bloqueado) return;
    jogo.charadaPosterior();
    notifyListeners();
  }

  void charadaAnterior() {
    if (bloqueado) return;
    jogo.charadaAnterior();
    notifyListeners();
  }

  Future<void> conferir() async {
    if (bloqueado) return; // Evita double clicks

    // 1. Muda estado para checando e notifica a UI para bloquear (tudo congela)
    _estadoAtual = EstadoJogo.checando;
    notifyListeners();
    
    // Aquele pequeno "respiro" / suspense antes de exibir a cor
    await Future.delayed(const Duration(milliseconds: 500));
    
    // 2. Aciona a regra principal
    final resultado = jogo.conferir();
    _estadoAtual = resultado;
    notifyListeners(); // Tela atualiza com as cores (Verde, Vermelho, Amarelo p/ Zerada...)
    
    // 3. Espera a animação visual durar um tempo para o jogador entender o repasse
    await Future.delayed(const Duration(seconds: 1));
    
    // 4. Salvar Card de Estudo caso seja Acerto ou o Jogo todo finalizado
    if (resultado == EstadoJogo.correto || resultado == EstadoJogo.finalizado) {
       colecaoCardsController.desbloquearCard(jogo.desafio.cardDeEstudo);
    }

    // 5. Se não estiver finalizado, a máquina de estado destrava a tela de volta.
    if (_estadoAtual != EstadoJogo.finalizado) {
      _estadoAtual = EstadoJogo.aguardando;
      notifyListeners();
    }
  }
}
