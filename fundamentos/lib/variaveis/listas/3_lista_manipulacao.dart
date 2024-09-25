void main() {
  final numeros = [1, 2, 3, 4, 5];
  print(numeros);

  // metodo add de List - adiciona um item no final da array
  numeros.add(5);
  print(numeros);

  //não permite eatribuir um valor em uma variavel final
  //numeros[6,5,4,1,2];

  final nomes = ["taina", "souza"];
  print(nomes);

  nomes.add("alves");
  print(nomes);

  // acesso ao item da lista atraves do indice - inicialzando com o índece 0

  //imprime o primeiro item da lista
  print(nomes[0]);

//imprime o terceiro item da lista
  print(nomes[2]);

  //-----metodo insert  de list - adiciona um item na posição determinada
  nomes.insert(0, "sei lá");
  print(nomes);

  //-----metodo addAll  de list - adiciona uma lista dentro de outra
  final nomes1 = ["taina1", "souza1", "alves1"];
  nomes.addAll(nomes1);
  print(nomes);

  //-----metodo addAll  de list - adiciona uma lista dentro de outra
  final nomes2 = ["taina 2", "souza 2", "alves 2"];
  nomes.insertAll(3, nomes2);
  print(nomes);

  //-----método remove- excluir u ite da lista
  ///utiliza o aperador igual ==
  nomes.remove("taina1");
  print(nomes);

  nomes.remove("souza1");
  print(nomes);

  //--- metodo removewhere - remove um item que atende um criterio

  nomes.removeWhere((nome) {
print("nome procurado $nome");
    if (nome != "taina") {
      return true;
    } else {
      return false;
    }
  });
  print("achei! ${nomes}" );


//   nomes.removeWhere((nome){
// print("nome procurado ${nome.substring(0,6)}");
//     if (nome.substring(0,6) != "taina") {
//       return true;
//     } else {
//       return false;
//     }
//   });
//   print("achei! ${nomes}" );




//utilizar lamba



}









  

