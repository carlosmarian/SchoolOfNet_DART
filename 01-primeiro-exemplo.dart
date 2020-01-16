

class Pessoa{
  String primeiro_nome, ultimo_nome = "";

  Pessoa(this.primeiro_nome, this.ultimo_nome);

  String nome(){
    return this.primeiro_nome + ' ' + this.ultimo_nome;
  }
}


void main(List<String> args) {
  //instanciar as classes.
  Pessoa p = new Pessoa('primeiro_nome', 'ultimo_nome');
  Pessoa p2 = new Pessoa('Maria', 'Silva');

  

  print(p.nome());
  print(p2.nome());

}

