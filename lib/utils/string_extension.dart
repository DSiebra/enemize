extension StringNormalizacao on String {
  String normalizar() {
    const com = 'áàâãäÁÀÂÃÄéèêëÉÈÊËíìîïÍÌÎÏóòôõöÓÒÔÕÖúùûüÚÙÛÜ';
    const sem = 'aaaaaAAAAAeeeeEEEEiiiiIIIIoooooOOOOOuuuuUUUU';

    String s = this;

    for (int i = 0; i < com.length; i++) {
      s = s.replaceAll(com[i], sem[i]);
    }

    return s.toUpperCase();
  }
}
