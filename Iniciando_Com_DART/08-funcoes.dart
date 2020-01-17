void main(List<String> args) {
  
  hello();
  helloComPar('Carlos');
  helloComParOpt('Carlos');
  // No opcional deve colocar o nome ao atribuir
  helloComParOpt('Carlos', sobrenome : 'Marian');

  helloComParOpt2('Carlos');
  helloComParOpt2('Carlos', 'Marian');
  helloComParOpt2('Carlos', 'Marian', 40);
}

void hello(){
  print('Hello');
}

void helloComPar(String nome){
  print('Hello '+ nome);
}

//para usar parametro opcinais em um metodo, tem que usar chaves
void helloComParOpt(String nome, {String sobrenome : ''}){
  print('Hello '+ nome + ' ' + sobrenome);
}

void helloComParOpt2(String nome, [String sobrenome = '', int idade = 0]){
  print('Hello '+ nome + ' ' + sobrenome + ((idade > 0)?(' idade: '+ idade.toString()):('')).toString());
}