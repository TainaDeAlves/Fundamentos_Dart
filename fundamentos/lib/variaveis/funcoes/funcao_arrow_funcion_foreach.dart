void main(){
  var lista= ["Banana", "Manga","Melancia","Uva"];
  print("Criando a função dentro da chamada do método forach");

  //lista.forEach(imprimir lista);
  lista.forEach((item)=> print('${lista.indexOf(item)}:  $item'));

  for(var item in lista){
   imprimirLista(lista.indexOf(item),item);
  }
}

void imprimirLista(int indice, String item){
  print('${indice}: $item');
}