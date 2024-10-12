
void executarOperador(int a, int b, Function operacao){
  print(operacao(a,b));
}

void main(List<String> args){
//chamada com uma função anônima

executarOperador(4, 5, (a,b)=>a+b);
executarOperador(4, 5, (a,b)=>a*b);
executarOperador(4, 5, (a,b)=>a-b);
executarOperador(4, 5, (a,b)=>a/b);
}