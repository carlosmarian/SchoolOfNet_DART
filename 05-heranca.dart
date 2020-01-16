
class Funcionario {
  static double salario;
  static const double indice = 10;

  static void receberAumento(double valor){
    salario += valor;
  }

  static void receberAumentoConst(){
    salario += indice;
  }

}

void main(List<String> args) {
  
  Funcionario.salario = 2500.25;
  print(Funcionario.salario);
  Funcionario.receberAumento(2000);
  
  print(Funcionario.salario);

  Funcionario.receberAumentoConst();

  print(Funcionario.salario);
}