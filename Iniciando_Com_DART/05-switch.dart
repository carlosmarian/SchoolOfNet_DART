void main(List<String> args) {
  

  String acao = 'fechar';

  if(acao == 'abrir'){
    print('IF ABRIR');
  }else if(acao == 'fechar'){
    print('IF FECHAR');
  }else if(acao == 'pendente'){
    print('IF PENDENTE');
  }else{
    print('IF N�o definido');
  }

  switch(acao){
      case "abrir":
      print('CASE ABRIR');
      break;
    case 'fechar':
      print('CASE FECHAR');
      break;
    case 'pendente':
      print('CASE PENDENTE');
      break;
    default:
      print('CASE N�o definido');
  }

  var teste = false;

  switch(teste){
    case true:
      print('CASE TRUE');
      break;
    case false:
      print('CASE FALSE');
      break;
  }
}