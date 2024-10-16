import 'circulo.dart';
import 'quadrado.dart';
import 'forma.dart';
import 'retangulo.dart';
import 'triangulo.dart';

void main(List<String> arg){
List<Forma> formas=[];
formas.add(Quadrado(10));
formas.add(Triangulo(20,20));
formas.add(Retangulo(20, 20));
formas.add(Circulo(20));
  // print("Área do quadrado: ${quadrado.calculaArea()}");
formas.forEach((forma)=> forma.imprimeForma());

  
}