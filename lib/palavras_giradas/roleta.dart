// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:enemize/models/letra_da_roleta.dart';

class Roleta {
  List<LetraDaRoleta> letras;
  int index = 0;

  Roleta({required this.letras});

  int get tamanhoDaRoleta => letras.length;

  String get letraAtual => letras[index].letra;

  LetraDaRoleta preencherRoleta(int index) => letras[index];
}
