import 'dart:io';

import 'saudacao.dart';

//função para dizer oie
//conchetes permite de clarar um argumento opcional posicional
void main(List<String> args){
  var nome;
 do{
  print("Informe o nome:");
  nome=stdin.readLineSync();
 }while(nome ==null);

 print("informe a saudação");
 var saudacao= stdin.readLineSync();

 if(saudacao==null || saudacao== ""){
  print (dizerOi (nome));
 }else{
  print (dizerOi(nome, saudacao));
 }

}


String dizerOi(String nome, [String saudacao="Ola"]){
  return '$saudacao,  $nome';
}

String dizerOiArgumentoopicional(String nome, [String? saudacao]){
  saudacao ??= 'Oie';
  return '$saudacao, $nome.';
}