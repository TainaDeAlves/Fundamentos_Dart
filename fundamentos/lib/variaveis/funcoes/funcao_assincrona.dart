//função assincrona

Future<String> buscarDados() async {
  await Future.delayed(Duration(seconds: 2));
  return "Processamento assincrono - hora ${DateTime.now()}";
}

//função sicrona
String processarDados(){
return "Processamento assincrono - hora ${DateTime.now()}";
}

//chamada de função assincrona

void main() async {
  String resultado = await buscarDados();
  print(resultado);
}
