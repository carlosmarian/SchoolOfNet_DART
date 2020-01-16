import 'Geometria/FormaGeometrica.dart';
import 'Geometria/Quadrado.dart';
import 'Geometria/Retangulo.dart';
import 'Geometria/Circulo.dart';
import 'CriaPDF.dart';

void main(List<String> args) {
  
  //Error: The class 'FormaGeometrica' is abstract and can't be instantiated.
  //var f = new FormaGeometrica();

  FormaGeometrica q = new Quadrado(3);
  FormaGeometrica r = new Retangulo(2,3);
  FormaGeometrica c = new Circulo(3);

  print(q.area());
  print(r.area());

  q.tipo = 'Quadrado';
  r.tipo = 'Retandulo';
  c.tipo = 'Circulo';

  print(CriaPDF.render(q));
  print(CriaPDF.render(r));
  print(CriaPDF.render(c));

}