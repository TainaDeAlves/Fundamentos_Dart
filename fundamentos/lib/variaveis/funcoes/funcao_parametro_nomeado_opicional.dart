//função com parametros nomeados
//chaves determina que o parametro pode ser opicional e nomeado 

import 'dart:io';

void main(List<String> args){
  print("Digite um nome");
  var visitante= stdin.readLineSync();

  print("Digite a mensagem");
  var mensagem = stdin.readLineSync();

  if(visitante!= "" && mensagem != ""){
    exibeMensagem(nome: visitante.toString(), mensagem: mensagem!);
    exibeMensagempocional( visitante!,mensagem);

  }else if(visitante== "" && mensagem==""){
    exibeMensagem();
    exibeMensagempocional();

  }else if(visitante != ""){
    exibeMensagem(nome: visitante!);
    exibeMensagempocional(visitante);

  }else if(mensagem !=null && mensagem != ""){
    exibeMensagem(mensagem: mensagem);
    exibeMensagempocional(null, mensagem);
  }
}



void exibeMensagem({String nome="Visitante", String mensagem="Bem-vinda"}){
  print("$mensagem, $nome.");
}
void exibeMensagempocional([String? nome="Visitante", String mensagem="Bem-vinda"]){
  print("$mensagem, ${nome??= "Visitante"}.");
}
