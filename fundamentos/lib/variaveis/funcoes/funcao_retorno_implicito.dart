void main(){
print("Chamada de função de retorno explicido:${somarRetornoImplicito(10,10)}");
print("Chamada de função de retorno explicido:${somarRetornoExplicito(10,10)}");
}


int somarRetornoImplicito(int numero1, int numero2){
  return numero1 + numero2;
}
int somarRetornoExplicito(int numero1, int numero2)=>numero1+numero2;