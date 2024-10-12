void main(){
  var numeros= [1,2,3,4,5];
  var soma = numeros.fold(0,(valorAnterior, elemento)=>valorAnterior + elemento);
  print(soma);

  soma=0;
  for(var elemento in numeros){
    soma+elemento;
  }

  var saudacao= ["ola","seja bem-vinda"];

  var oi = saudacao.fold(" ", (valoranterior, elemento) => valoranterior + elemento );
  print(oi);

  print(saudacao.fold<String>(' ', (valoranterior, elemento) => valoranterior + elemento));
}