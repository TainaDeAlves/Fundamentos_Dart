import 'forma.dart';
import 'enum.dart';


class Retangulo extends Forma{
  double altura = 0;
  double comprimento = 0;
  Retangulo(this.altura,this.comprimento):super(tpForma.Retangulo);

@override
  double calculaArea(){
    return (altura * comprimento);
  }
  

}