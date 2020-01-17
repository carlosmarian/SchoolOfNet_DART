void main(List<String> args) {
  

  int i = 0;

  //primeiro testa e depois executa se for verdadeiro.
  while(i < 18 ){
    print('idade '+ i.toString());
    i++;
  }

  bool teste = true;
  i = 0;

  while(teste){
    print('Novo While ' + i.toString());
    if(i > 10){
      teste = false;
    }
     
    i++;
  }

  int y = 18;

  //primeiro executa e depois testa
  do {
    print('Valor de Y: '+ y.toString());
    y --;
  } while ( y > 10);

}