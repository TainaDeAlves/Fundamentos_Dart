void main(){
  // ? = nullable (aceita null)
  //sem nada (padrão) (não aceita valores null)

  //tem que inicializar a lista e os itens internos não podem ser nulos
  List<String> nome = [];

// não precisa inicializar a lista e os itens internos nãp podem ser nulos
  List<String>? nomenulos;
 // nomenulos = ['taina', null];

//tem que inicializar a lista e os itens internos podem ser nulos
  List<String?> nomeinternosaceitanulos = ["taina", null];

//não precisa inicializar 
  List<String?>? nomenulosinternosaceitanulos = null;

  //declaração por inferencia//

//tem que inicializar a lista e os itens internos podem ser nulos
  var nomeinferencia= <String>[];

  // não precisa inicializar a lista e os itens internos nãp podem ser nulos
  final nomesinternosaceitanulosinterferencia = <String?>["taina",null];

  //não precisa inicializar a lista e os itens internos podem ser nulos
  // não é possível declarar por inferencia 
  //var nomenulosinternosaceitanulosinferencia = <String?>?null

}