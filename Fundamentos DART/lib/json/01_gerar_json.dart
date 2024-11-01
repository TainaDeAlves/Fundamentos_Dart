import 'dart:convert';

void main() {
  //criar um mapa (objeto)

  Map<String, dynamic> user = {
    'nome': 'Alice',
    'idade': 30,
    'Estudante': false
  };

  // converter o mapa em JSON

  String jsonString= jsonEncode(user);
  print(jsonString);
}
