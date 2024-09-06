void main()
{
    //sintaxe
    //<tipo> nome = atribuição;
    //<tipo> nome;
    //nome= atribuição;

    String nome = 'Tainá De Souza';

    int idade;
    idade=10;

    double cotacaoDolar= 5.64;


    //intepretação de string
    print("nome ${nome} - Idade ${idade}");

    //concatenação de string
    print("nome" + nome + "- idade" + idade.toString());

    //por ser fortemente tipado, não permite atribuir um valor que não pertece ao tipo de  variavel 
    //idade ="numero nove";

    //por ser fortemente tipado não permite atribuir um valor que gera perda de precição da informação
    //idade = 1.5;

    cotacaoDolar = 5;
    cotacaoDolar = 5.0;

    // nome da variavel não usar caracteres especiais, espaço ou acentos e palavras reservadas
    // https://dart.dev/language/keywords

    // palavra reservada VAR  é utilizada em dart para declarar uma variavel com o tipo inferido

    var idadeinferido =1;
    idadeinferido = 20;

    //idadeinferido = 1.5;

    print("idade ${idadeinferido}");

    // aceita qualquer coisa 

    dynamic tipoMae; 

    tipoMae = 10;

    tipoMae = "string";

//Object é a class base de todos os objetos isso significa que todos os tipos em dart, incluindo os tipos primitivos, são do tipo Object

    Object maedasmaes;

    maedasmaes = 20;
    maedasmaes = 20.5;
    maedasmaes= "olá";

    //evite tipos de object ou Dynamic, pois poderá acorrer um error em tempo de execução
tipoMae += 10;
    print("valor da variavel tipoMae ${tipoMae}");


    
    
}