import 'dart:math';

import 'Forma.dart';
import 'enum.dart';

class Circulo extends Forma{
  double raio = 0;    

  Circulo( this.raio ) : super(tpForma.Circulo){
    Forma.idFormaClass=4;
    super.idFormainstancia=4;
  }
 
  @override
  double calculaArea(){
    return pow(raio, 2) * pi;
  }
 
}