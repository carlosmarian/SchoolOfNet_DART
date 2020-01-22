 
 void main(List<String> args) {
  int x = 13;
  int y = 2;

  print('Início');
  try{
    
    if(x <= 12){
      //Propaga uma exception 
      throw new FormatException('X é menor que 12');
    }
    
    //Ao usar o "~" junto na divisao, indica ao DART que eh uma dicisao de inteiros.
    var result = x ~/ y;

    print(result);
  //Tipar o erro e obter a exception
  } on FormatException catch(e){
      print(e);
  //Tipar se obter o tipo do erro.
  } on IntegerDivisionByZeroException {
    /*
    IntegerDivisionByZeroException, FormatException, DeferredLoadException(carregamento de bibiotecas)
    IOException, TimeoutException (requisicao ascincrina leva mais tempo que o limite)
    */
    print('Você não pode dividir numeros por ZERO.');
  //Tipo genérico. poderia ser sem o tipo.
  // } catch(e){
  } on Exception catch(e){
    print('Erro geral:' + e.toString());
  }finally{
    print('Fim');
  }   
 }