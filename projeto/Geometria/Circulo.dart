import 'FormaGeometrica.dart';
import 'dart:math';

class Circulo extends FormaGeometrica{
  num raio;

  Circulo(this.raio);

  num area(){
    //return raio * raio * 3.14;
    return pow(this.raio, 2) * pi;
  }
}