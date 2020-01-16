import 'Geometria/FormaGeometrica.dart';

class CriaPDF{

  static String render (FormaGeometrica forma){
    return 'Area da forma eh: ' + forma.area().toString();
  }
}