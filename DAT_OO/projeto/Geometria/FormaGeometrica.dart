abstract class FormaGeometrica{
  //o "_" indica privado
  String _tipo;  

  num area();

  String get tipo => this._tipo;

  set tipo(String tipo){
    this._tipo = tipo;
  }

}