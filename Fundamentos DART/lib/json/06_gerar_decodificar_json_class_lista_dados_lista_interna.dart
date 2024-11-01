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
  String jsonString = ''' [
                           {
                           'nome': 'alice', 
                          'idade': 30, 
                          'estudante': false',
                           'telefone':["1234-1568", "2155-4644"],
                           'emails': ["alice@gmail.com", "alic@gmail.com"]
                           },
                           {
                           'nome': 'bob', 
                          'idade': 20, 
                          'estudante': true',
                           'telefone':["6321-9865", "0000-7985"],
                           'emails': ["bob@gmail.com", "bo@gmail.com"]
                           },
                           {
                           'nome': 'gabi', 
                          'idade': 36, 
                          'estudante': false',
                           'telefone':["4168-5313", "7634-4548"],
                           'emails': ["gabi@gmail.com", "gabi@gmail.com"]
                           },
                           ]
                          ''';

  //Coverte a string JSON em uma lista mapa
  List<dynamic> usersJson = jsonDecode(jsonString);

  //criar uma lista objeto users a partir da lista de mapa

  List<User> users = usersJson.map((userJson) => User.deJson(userJson)).toList();

//exibir os detalhes do user

  // print("${user.nome},Idade: ${user.idade}, Estudate ${user.estudante}");

  
  for (var user in users) {
    print('''
            Nome:${user.nome},
            Idade: ${user.idade},
            estudante: ${user.estudante},
            telefone: ${user.telefone.join(" ,")},
            emails: ${user.emails.join(" ,")}


''');
  }

//converte o objeto User de volta para JSON
String jsonSaida = jsonEncode( users.map( (user)=>user.paraJson()).toList());
print(jsonSaida);
  
}



