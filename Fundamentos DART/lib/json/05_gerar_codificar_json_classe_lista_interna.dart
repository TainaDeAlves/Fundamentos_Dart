import 'dart:convert';

class User {
  String nome;
  int idade;
  bool estudante;
  List<String> telefone;
  List<String> emails;

  User(
      {required this.nome,
      required this.idade,
      required this.estudante,
      required this.emails,
      required this.telefone});

  // método para converter um objeto User em um mapa

  Map<String, dynamic> paraJson() {
    return {
      'nome': nome,
      "idade": idade,
      "estudante": estudante,
      "Telefone": telefone,
      "emails": emails
    };
  }

  //método para criar um objeto user a partir de um mapa

  factory User.deJson(Map<String, dynamic> json) {
    return User(
        nome: json['nome'],
        idade: json['idade'],
        estudante: json['estudante'],
        telefone: List<String>.from(json['telefone']),
        emails: List<String>.from(json['emails']));
  }
}

void main() {
  // String JSON com um único usuario
  String jsonString = '''{'nome': 'alice', 
                          'idade': 30, 
                          'estudante': false',
                           'telefone':["1234-1568", "2155-4644"],
                           'emails': ["alice@gmail.com", "alic@gmail.com"]
                           }
                          ''';

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
