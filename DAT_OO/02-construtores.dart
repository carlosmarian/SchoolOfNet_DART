
class Retangulo{
  num largura, altura;

  Retangulo(this.altura, this.largura);
  /*
  //Construtor nomeado
  Retangulo.quadrado(num dimensao){
    this.altura = dimensao;
    this.largura = dimensao;
  }
  */
  //redirecionamento de construtor, e mais simples caso nao seja necessario validar ou alterar os dados passados
  Retangulo.quadrado(num dimensao) : this(dimensao, dimensao);

  num area(){
    return this.altura * this.largura;
  }

}

void main(List<String> args) {
  
  Retangulo r = new Retangulo(3, 2);

  Retangulo quadrado = new Retangulo.quadrado(2);

  print(r.area());
  print(quadrado.area());
}