void main() {
  final nome = "fulano de tal";
  var nome_substring = nome.substring(7);
  print(nome.substring(0, 6));

  var sexo = "MASCULINO";

  var sexosigla = sexo.substring(0, 1);

  if (sexosigla == "M") {
    print("Sexo Masculino");
  }
  if (sexo.startsWith("M")) {
    print("sexo masculino");
  }

// toLowerCase() = converte para minusculo
  if (sexo.toLowerCase().startsWith('m')) {
    print('sexo masculino');
  }

  if (nome.toUpperCase().contains('Tal')) {
    print('é da familia tal');
  }

  //concatenação de string

  final primeironome = "fulano";
  final sobrenome = "de tal";

  final saudacaoconcatenacao =
      ("ola" + ' ' + primeironome + ' ' + sobrenome + ' ' + "seja bem-vindo.");

  final saudacaointerpolacao = ('ola $primeironome $sobrenome seja bem-vindo');

  final saudacaointerpolacaofuncao =
      ('ola ${primeironome.toLowerCase()} ${sobrenome.toLowerCase()}, seja bem -vindo');

  print(saudacaoconcatenacao);
  print(saudacaointerpolacao);
  print(saudacaointerpolacaofuncao);

  var paciente = "falano de tal|30 anos|brasileiro";

  final dadospacientes = paciente.split('|');

  paciente = " tal|24 anos|Espanhol";

  dadospacientes.addAll(paciente.split('|'));
  print(
      'Nome: ${dadospacientes[3]}  Idade: ${dadospacientes[4]} Nacionalidade:${dadospacientes[5]}');

  //lista de strings

  final listapacientestring = [
    "falano de tal|30 anos|brasileiro",
    " tal|24 anos|Espanhol"
  ];
  listapacientestring.add('sicrano da silva| 19 anos| Alemanha');
  for (var paciente in listapacientestring) {
    final dadospacientes = paciente.split("|");
    print(
        "Nome: ${dadospacientes[0]} Idade: ${dadospacientes[1]} Nacionalidade: ${dadospacientes[2]}");
  }
  ;

  // lista de lista 
  final listapacientelista =[
    ['taina souza', '18 anos', 'Brasileira'],
    ['sei la','25 anos', 'Frances']
    ];
    paciente = 'rosimara da silva| 45 anos| italiana';
    listapacientelista.add(paciente.split("|"));
    for(var dadospacientes in listapacientelista){
      print(
        "Nome: ${dadospacientes[0]} Idade: ${dadospacientes[1]} Nacionalidade: ${dadospacientes[2]}");
    }

    print("primeiro registro");
    print("nome ${listapacientelista[0][0]}  idade ${listapacientelista[1][1]}");
}
