//função que retorna um closure

Function criarIncrementador(int incremente){
  return (int numero){
      return numero + incremente;
  };
}

void main(){
  //criar uma função que incremente por 5

  var incrementePor5= criarIncrementador(5);

  // chamada a closure
  print(incrementePor5(10));
}