import 'dart:html';

void main() {
  querySelector('#output').text = 'Curso DART Web.';

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
}
