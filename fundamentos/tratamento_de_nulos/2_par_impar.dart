import 'dart:io';

void main() {
  print("informe um número");
  final numero = stdin.readLineSync();
  if (numero != null && int.tryParse(numero) != null) {
    final numeroconvertido = int.tryParse(numero);
    print("Número ${numeroconvertido! % 2 ==0 ?'par': 'impar'} ");
    numeroconvertido % 2 ==0?print("Numero par"):print("número impar");
  } else {
    print("número inteiro invlido");
  }
}
