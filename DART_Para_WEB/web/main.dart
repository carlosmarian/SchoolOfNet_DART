import 'dart:html';

clickExamplo(MouseEvent e){
  //Nao faca nada da acao de click
  e.preventDefault();

  Element ul2 = querySelector('ul');
  ul2.children.add(Element.html('<li class="blue">Curso add pelo LINK</li>'));
}

void main() {
  querySelector('#output').text = 'Curso DART Web.';
/*
  //Varrenado a alterando itens fixos.;
  ElementList divs = querySelectorAll('ul li');

  List cursos = [
    'Curso PHP',
    'Curso HTML',
    'Curso Delphi',
    'Curso C#',
    'Curso DART',
    ];

  for (var i = 0 ; i < divs.length; i++){
    divs[i].text = cursos[i];
  }
*/

  Element ul = querySelector('ul');

  List cursos = [
    'Curso PHP',
    'Curso HTML',
    'Curso Delphi',
    'Curso C#',
    'Curso DART',
    'Curso SQL',
    ];

  //Varre a lista de cursos
  for (var curso in cursos) {
    //Cria o elemento
    //   Lista dos elementos que vc pode criar: https://api.dart.dev/stable/2.7.0/dart-html/HtmlElement-class.html
    var li = LIElement();
    //A lista a descricao
    li.text = curso;
    //Adiciona o item
    ul.children.add(li);    
  }

  //Incluir um elemento via str html
  ul.children.add(Element.html('<li class="red">Curso add fixo</li>'));

  var link1 = Element.a();
  link1.setAttribute('href', 'add_curso');
  link1.text = 'Add Curso  ';
  link1.onClick.listen(clickExamplo);
  querySelector('footer').children.add(link1);

  var link = Element.a();
  link.setAttribute('href', 'http://google.com');
  link.setAttribute('target', 'blank');
  link.text = '  Ir para o Google';
  querySelector('footer').children.add(link);
}
