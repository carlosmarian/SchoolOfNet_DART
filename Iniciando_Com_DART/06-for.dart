void main(List<String> args) {
    
  List listaDeCompras = [
    1, 2, 3, 4, 5, 6, 7, 8, 'Carlos', 75.36, false
  ];

  for(int i = 0; i < listaDeCompras.length; i++ ){
    print(listaDeCompras[i]);
  }

  //foreach
  for(var item in listaDeCompras){
    print(item);
  }

}