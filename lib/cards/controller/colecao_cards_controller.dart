import 'package:enemize/shared/models/card_de_estudo.dart';
import 'package:flutter/material.dart';

class ColecaoCardsController extends ChangeNotifier {
  final List<CardDeEstudo> _cardsDesbloqueados = [];

  List<CardDeEstudo> get cardsDesbloqueados => _cardsDesbloqueados;

  void desbloquearCard(CardDeEstudo card) {
    if (!_cardsDesbloqueados.contains(card)) {
      _cardsDesbloqueados.add(card);
      notifyListeners();
    }
  }

  bool jaDesbloqueado(CardDeEstudo card) {
    return _cardsDesbloqueados.contains(card);
  }
}
