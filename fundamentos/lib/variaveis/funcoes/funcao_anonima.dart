
void main() {
  var somarAninimo = (int a, int b) {
    return a + b;
  };

  print("Chamando uma função anônima: ${somarAninimo(10, 5)}");
  print("Chamando uma função nomeada: ${somarNomeado(10, 5)}");

  List<String> pessoas = ["Fulano|Gerente|", "Beltrano|Vendedor"];
  
  // Usando forEach com uma função anônima
  pessoas.forEach((pessoa) {
    var dados = pessoa.split("|");
    print("Nome: ${dados[0]} Profissão: ${dados[1]}");
  });

  // Usando um loop for
  for (var pessoa in pessoas) {
    var dados = pessoa.split("|");
    print("Nome: ${dados[0]} Profissão: ${dados[1]}");
  }
}

int somarNomeado(int a, int b) {
  return a + b;
}
