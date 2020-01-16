abstract class FormaGeometrica{

  num area();

}

class Retangulo extends FormaGeometrica{
  num largura, altura;

  Retangulo(this.largura, this.altura);

  num area(){
    return this.largura * this.altura;
  }
}

class Quadrado extends Retangulo{
  Quadrado(num dimensao) : super(dimensao, dimensao);
}

class CriaPDF{

  static String render (FormaGeometrica forma){
    return 'Area da forma eh: ' + forma.area().toString();
  }
}

void main(List<String> args) {
  
  //Error: The class 'FormaGeometrica' is abstract and can't be instantiated.
  //var f = new FormaGeometrica();

  FormaGeometrica q = new Quadrado(3);
  FormaGeometrica r = new Retangulo(2,3);

  print(q.area());
  print(r.area());

  print(CriaPDF.render(q));
  print(CriaPDF.render(r));

}