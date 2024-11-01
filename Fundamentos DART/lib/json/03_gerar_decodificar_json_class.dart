import 'dart:convert';

class User{
  String nome;
  int idade;
  bool estudante;

  User({
    required this.nome,
    required this.idade,
    required this.estudante
  });

  // método para converter um objeto User em um mapa

  Map<String, dynamic> paraJson(){
    return{
      'nome': nome,
      "idade": idade,
      "estudante": estudante,
    };
  }

  //método para criar um objeto user a partir de um mapa

  factory User.deJson(Map<String, dynamic> json){
    return User(
      nome: json['nome'],
      idade: json['idade'],
      estudante: json['estudante'],
    );
  }

}

void main(){
  // String JSON com um único usuario
  String jsonString= "('nome': 'alice', 'idade': 30, 'estudante': false)";

  //Coverte a string JSON em um mapa 
  Map<String, dynamic> userJson = jsonDecode(jsonString);

  //criar um objeto user a partir do mapa
  User user = User.deJson(userJson);

//exibir os detalhes do user

print("${user.nome},Idade: ${user.idade}, Estudate ${user.estudante}");

//converte o objeto User de volta para JSON

String jsonSaida = jsonEncode(user.paraJson());
print(jsonSaida);
}