class Pessoa{
  String primeiro_nome, ultimo_nome = "";
  int idade;

  //construtor
  Pessoa(this.primeiro_nome, this.ultimo_nome, this.idade);

  //void sayHello(String nome, [int idade = 0, num salario]){
  //com parametros nomeados
  void sayHello(String nome, {int idade = 0, num salario}){
    String msg = 'Hello '+ nome;
    
    if(idade > 0){
      msg += ' idade: ' + idade.toString();
    }

    if(salario != null){
      msg += ' salario: ' + salario.toString();
    }

    print(msg);

  }

  void hello(){
    String msg = 'Hello '+ primeiro_nome;

    msg += ' ' + ultimo_nome;
    msg += ' idade: ' + idade.toString();

    print(msg);
  }
}

void main(List<String> args) {
  
  var p1 = new Pessoa('Carlos', 'Marian', 40);

  p1.hello();

  p1.sayHello('Carlosss');

  p1.sayHello('Carlosss2', idade : 40);

  p1.sayHello('Carlosss3', idade : 40, salario : 45.56);

  p1.sayHello('Carlosss3.1', salario : 45.56, idade : 40);

  p1.sayHello('Carlosss4', salario : 45.56);

}