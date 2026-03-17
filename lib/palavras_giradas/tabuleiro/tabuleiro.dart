import 'package:enemize/palavras_giradas/tabuleiro/letra_da_roleta.dart';
import 'package:enemize/palavras_giradas/tabuleiro/roleta.dart';

class Tabuleiro {
  List<Roleta> roletas;
  Tabuleiro({required this.roletas});

  int quantidadeDeLetrasDaRoleta(int roleta) => roletas[roleta].quantidadeDeLetrasDaRoleta;

  String get tentativa => roletas.map((roleta) => roleta.letraAtual).join();

  int get quantidadeDeRoletas => roletas.length;

  void atualizar(int roleta, int letra) => roletas[roleta].atualizar(letra);

  void subtrairLetras() {
    for (var roleta in roletas) {
      roleta.subtrairLetra();
    }
  }

  // Encaminha o acesso à letra de uma posição específica de uma roleta
  LetraDaRoleta letraNaPosicao(int roleta, int index) => roletas[roleta].letraNaPosicao(index);

  //Construtor que recebe uma list<String> e retorna uma List<Roleta>
  //1 - Uma lista de roletas é gerada, com a quantidade de letras da reposta
  //(7 letras, 7 roletas)
  //para cada roleta, cria-se uma list de String com as letras na posição numeroDaColuna
  //essa list<String> serve para alimentar o construtor da Roleta que recebe uma List<String>
  //forma-se uma list<Roletas> para alimnentar o retorno do Tabuleiro
  factory Tabuleiro.fromRespostas(List<String> respostas) {
    final result = List.generate(respostas.first.length, (numeroDaColuna) {
      final letrasDaRoleta = respostas.map((resposta) => resposta[numeroDaColuna]).toList();
      return Roleta.fromLetras(letrasDaRoleta);
    });
    return Tabuleiro(roletas: result);
  }
}
