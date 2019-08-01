import 'Pessoa.dart';

class ListaPessoas {
  List<Pessoa> pessoas;

  void iniciaList(){
    pessoas = new List<Pessoa>();
  }

  void addPessoa(Pessoa p){
    pessoas.add(p);
  }


  List<Pessoa> lista(){
    return  pessoas;
  }
}

