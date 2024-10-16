import 'forma.dart';
import 'enum.dart';


class Circulo extends Forma{
  double area = 0;
  
  Circulo(this.area):super(tpForma.Circulo);

@override
  double calculaArea(){
    return area*area;
  }
  

}