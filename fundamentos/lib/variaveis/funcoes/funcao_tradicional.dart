import 'dart:io';

//declaração de efunção tradicional

void main(List<String> args) {
  print("informe um número");
  var numero1 = stdin.readLineSync();

  print("informe o segundo número");
  var numero2 = stdin.readLineSync();

  try {
    var resulta = somar(int.parse(numero1!), int.parse(numero2!));
    print("O resultado da soma ${numero1} + ${numero2} = ${resulta}");
  } catch (e) {
    print("numero 1 ou 2 invalido");
  }
}

//argumentos posicionais 
 int somar(int a, int b) {
  return a + b;
}
