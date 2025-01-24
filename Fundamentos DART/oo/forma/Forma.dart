import 'enum.dart';

abstract class Forma {
  tpForma tipoForma;

  Forma(this.tipoForma);

  static int idFormaClass = 0;

  int idFormainstancia = 0;

  double calculaArea();

  void imprimeForma() {
    print("${tipoForma.name} com área de ${calculaArea()}");
  }
}
