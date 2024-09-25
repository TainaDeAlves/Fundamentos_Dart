void main() {
  //variavel non-nullable tem que inicializar antes de utilizar
  String nomenonnullsafety;
  nomenonnullsafety = "";
  print('esta vazia ${nomenonnullsafety.isEmpty}');

  String? nomenullsafety;
  if (nomenullsafety != null) {
    print('está vazia ${nomenullsafety.isEmpty}');
  }

  String? nomenullsafety1;
  // ignora as orientações do null-safety e vc fica rsnponsavel em garatirr que a variavel não está nula
  nomenullsafety1 = "";
  print('está vazia ${nomenullsafety1!.isEmpty}');

// ?? é um operador  ternario. se a variavel estiver nula, executara a expressão do lado direito do operador ??
  String? nomenullsafety2;
  print('está vazia ${nomenullsafety2?.isEmpty ?? 'não preenchido'}  ');
  print('está vazia ${nomenullsafety2?.isEmpty ?? true}  ');

  // ?? é um operador  ternario. se a variavel estiver nula, executara a expressão do lado direito do operador ??
  String? nomenullsafety3;
  nomenullsafety3 = " ola";
  print('está vazia ${nomenullsafety3?.isEmpty ?? 'não preenchido'}  ');
  print('está vazia ${nomenullsafety3?.isEmpty ?? true}  ');
}
