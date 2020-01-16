

class Pessoa{
  String primeiro_nome, ultimo_nome;

  Pessoa(this.primeiro_nome, this.ultimo_nome);

  /*
  //acima é a versão resumida, mas as duas são compativeis
  Pessoa(String primeiro_nome, String ultimo_nome){
    this.primeiro_nome = primeiro_nome;
    this.ultimo_nome = ultimo_nome;
  }
  */

  String nome(){
    return this.primeiro_nome + ' ' + this.ultimo_nome;
  }
}

class Funcionario extends Pessoa{

  double salario;

  Funcionario(String primeiro_nome, String ultimo_nome, this.salario) : super(primeiro_nome, ultimo_nome);

  String salarioS(){
    return ' ' + this.salario.toString();
  }

}

void main(List<String> args) {

  Pessoa p = new Pessoa('carlos', 'marian');

  print(p.nome());

  Funcionario f = new Funcionario('carlos', 'marian', 456.26);

  print(f.nome());
  print(f.salarioS());

}
