abstract class FormaGeometrica{

  num area();

  String tipo(){
    return 'nao informada';
  }

  String teste();

}

class Retangulo implements FormaGeometrica{
  num largura, altura;

  Retangulo(this.largura, this.altura);

  num area(){
    return this.largura * this.altura;
  }

  String tipo(){
    return 'retangulo';
  }

  String teste(){
    return 'Metodo teste Retangulo';
  }
}

class Quadrado extends FormaGeometrica{
  num dimensao;
  Quadrado(this.dimensao) ;

  num area(){
    return this.dimensao * this.dimensao;
  }

  //com extends 
  //Com extes este 
  String teste(){
    return 'Metodo teste Quadrado';
  }
}

class CriaPDF{

  static String render (FormaGeometrica forma){
    return 'Area de '+ forma.tipo() + ' eh: ' + forma.area().toString();
  }
}

void main(List<String> args) {
  
  //Error: The class 'FormaGeometrica' is abstract and can't be instantiated.
  //var f = new FormaGeometrica();

  FormaGeometrica q = new Quadrado(3);
  FormaGeometrica r = new Retangulo(2,3);

  print(q.teste());
  print(r.teste());

  print(CriaPDF.render(q));
  print(CriaPDF.render(r));

}