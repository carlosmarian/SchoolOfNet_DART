class Pessoa{
  String primeiro_nome, ultimo_nome;

  Pessoa(this.primeiro_nome, this.ultimo_nome);

  String nome(){
    return this.primeiro_nome + ' ' + this.ultimo_nome;
  }
}

class Funcionario extends Pessoa{
  double salario;

  //Construtor com um redirecionamento para a classe Pai com os parametros
  Funcionario(String primeiro_nome, String ultimo_nome, this.salario) : super(primeiro_nome, ultimo_nome);

  void receberAumento(double valor){
    this.salario += valor;
  }

}

void main(List<String> args) {
  
  var p1 = new Pessoa('carlos', 'marian');
  var f1 = new Funcionario('carlos 2', 'marian 2', 4500.25);

  print(p1.nome());
  print(f1.nome());
  print(f1.salario);
  f1.receberAumento(100.75);
  print(f1.salario);
}