void main(List<String> args) {
  print('\n// List [] permite valores duplicados');

  var numeroList = [];

  numeroList.add(1);
  numeroList.add(1);
  numeroList.add(2);
  numeroList.add(2);
  numeroList.add(3);
  numeroList.add(4);
  numeroList.add(null);
  numeroList.add(5);
  print(numeroList);


  print('\n// Set [] permite valores duplicados');

  var numeroSet = <int?> [];

  numeroList.add(1);
  numeroList.add(1);
  numeroList.add(2);
  numeroList.add(2);
  numeroList.add(3);
  numeroList.add(4);
  numeroList.add(null);
  numeroList.add(5);
  print(numeroSet);


  print('\n// método List.toSet() para transsformar uma lista em um set');
  var numeroSetDeList= numeroList.toSet();

  print('\n// Set também possui os método interable');
  numeroSetDeList.forEach(print);

  print('\n// método difereente de set compara dois Sets e apreseta apenas os itens que exclusivo do primeiro conjunto');
  var conjuntoNumerico1={1,2,3,4,5,6};
  var conjuntoNumerico2={1,2,3,7};

  print('conjunto 1:$conjuntoNumerico1');
  print('conjunto 2: $conjuntoNumerico2');


  print('\n// método difference de Set compara dois Set e apresenta apenas os itens que são exclusivos do primeiro conjunto');

  print('itens exclusivo do conjunto 1 em relação ao 2');
  print(conjuntoNumerico1.difference(conjuntoNumerico2));


  print('itens exclusivo do conjunto 2 em relação ao 1');
  print(conjuntoNumerico2.difference(conjuntoNumerico1));


   print('//\método intersection - retorna apenas os itens existens nos dois conjuntos');
  print(conjuntoNumerico2.intersection(conjuntoNumerico1));


  var conjuntoNomes1={'Fulano', 'Beltrano', 'Siclano'};
  var conjuntoNomes2={'Fulano', 'Beltrano'};

  print("//conjunto de nomes 1: $conjuntoNomes1");
  print("//conjunto de nomes 2: $conjuntoNomes2");

  print("interseção dos dois conjunto: ${conjuntoNomes1.intersection(conjuntoNomes2)}");

  print('\n// método lookup - pesquisa um item dentro do cojunto, se não encontrar retorna null');
  print(conjuntoNomes2.lookup('Beltrano'));
  print(conjuntoNomes2.lookup('Siclano'));

  print("\n// para retornar um item do conjunto através do índice, deve-se utilizar o método elementAt(index)");

  print("Segundo nome do conjuto: ${conjuntoNomes1.elementAt(1)}");

}


