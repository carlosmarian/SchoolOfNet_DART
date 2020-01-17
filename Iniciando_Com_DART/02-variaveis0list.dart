/**
 * Listas
*/
void main(){

  List listaDeCompras = [
    1, 2, 3, 4, 5, 6, 7, 8, 'Carlos', 75.36, false
  ];

  print(listaDeCompras.length);
  
  List user = [
    'Carlos',
    40,
    72.36,
    true
  ];

  print(user);


  Map user2 = {
    'nome' : 'carlos',
    'idade' : 40,
    'peso' : 72.36,
    'ehProfessor' : true,
    1 : 'um'
  };

  print(user2);

  print(listaDeCompras);
  //Obter um item da lista;
  print(listaDeCompras[8]);
  //Ultimo item da lista;
  print(listaDeCompras.last);
  //primeiro item da lista;
  print(listaDeCompras.first);

  //Obter dados do MAP:
  print(user2['nome']);
  print(user2[1]);

  
}