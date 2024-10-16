import 'forma.dart';
import 'enum.dart';


class Triangulo extends Forma{
  double altura = 0;
  double base = 0;
  Triangulo(this.altura,this.base):super(tpForma.Triangulo);

@override
  double calculaArea(){
    return (altura * base)/2;
  }
  

}