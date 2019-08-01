import 'dart:math';
import '../test/ListaPessoas.dart';
import '../test/Pessoa.dart';
import 'dart:io';

main(List<String> arguments) {

  List<Pessoa> pessoas = new List<Pessoa>();

  var op;
  while(op != 's') {

    print("Menu");
    print("[a] Mostrar pessoas.");
    print("[b] Adicionar pessoa.");
    print("[c] Remover pessoa.");
    op = stdin.readLineSync();

    switch(op) {
      case 'a':

        mostrarPessoas(pessoas);
        break;

      case 'b':

        adcPessoa(pessoas);
        break;

      case 'c':

        buscaPessoa(pessoas);
        break;
    }
  }
}


void mostrarPessoas(List<Pessoa> pessoas) {
  var nome;
  var idade;
  var altura;
  var peso;

  for (final x in pessoas) {
    print("~~~~~~~~~~~~~~~~~");
    print(x.nome+"\n");
    print(x.idade+"\n");
    print(x.altura+"\n");
    print(x.peso+"\n");
    print("~~~~~~~~~~~~~~~~~");
  }
}

void adcPessoa(List<Pessoa> pessoas) {
  var nome;
  var idade;
  var altura;
  var peso;

  print("Digite seu nome ?");
  nome = stdin.readLineSync();
  print("Digite sua idade ?");
  idade = stdin.readLineSync();
  print("Digite sua altura ?");
  altura = stdin.readLineSync();
  print("Digite seu peso ?");
  peso = stdin.readLineSync();

  Pessoa pessoa = new Pessoa(nome, idade, altura, peso);
  pessoas.add(pessoa);
}

void rmvPessoa(List<Pessoa> pessoas, Pessoa p) {
  pessoas.remove(p);
}

void buscaPessoa(List<Pessoa> pessoas) {
  var nome;

  print("\nDigite seu nome ?");
  nome = stdin.readLineSync();

  for (final x in pessoas) {
      if(x.nome == nome) {
          rmvPessoa(pessoas, x);
          break;
      }
  }
}
