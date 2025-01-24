import 'Forma.dart';
import 'enum.dart';
import 'main.dart';

class Quadrado extends Forma{
  double lado = 0;

  Quadrado( this.lado ) : super(tpForma.Quadrado){
    Forma.idFormaClass=1;
    super.idFormainstancia=1;
  }
 
  @override
  double calculaArea(){
    return lado * lado;
  }

}