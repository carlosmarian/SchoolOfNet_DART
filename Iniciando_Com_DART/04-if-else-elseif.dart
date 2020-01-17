void main(List<String> args) {
  
  var nome = 'Carlos';

  // == Igual
  // != Diferente

  if(nome != 'Carlos'){
    print('Dentro do bloco IF');
  }

  var idade = 18;

  if(idade < 18){
    print('Dentro do bloco IF Idade');
  }else if(idade == 18){
    print('Dentro do bloco ELSEIF Idade');
  }else{
    print('Dentro do bloco ELSE Idade');
  }

  print('Fim');

}