import 'dart:convert';

void main() {
  // String json

  String jsonString = '{"nome":"Alice", "idade":30, "estudante": false}';

  //convertendo a string String em um mapa

  Map<String, dynamic> user = jsonDecode(jsonString);

  print(user['nome']);
  print(user['idade']);
  print('Éstudante ${user["Estudante"] ? "sim" : "não"}');
}
