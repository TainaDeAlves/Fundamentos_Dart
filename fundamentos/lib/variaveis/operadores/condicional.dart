import 'dart:io';

void main() {
  const limiteidade = 16;

  // pega a infromação do ususario
  final idade = stdin.readLineSync();

  if (idade != null) {
    final idadeconvertida = int.tryParse(idade);

    if (idadeconvertida != null && idadeconvertida < limiteidade) {
    print("não pode voltar");
  }else if(idadeconvertida == limiteidade){
    print("primeiro ano de votação");
  }else{
    print("pode votar"); 
  }
  
  //(teste de logica)? vaor se verdadeiro ou falso;
  final podevotar=(idadeconvertida !=null) ?idadeconvertida >=limiteidade: false;
  if(podevotar){
    print("pode votar");
  }else{
    print("não pode votar");
  }
  }

  

  
}
