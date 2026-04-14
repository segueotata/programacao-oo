import 'Funcionario.dart';

void main() {
  Funcionario f1 = Funcionario.estagiario("Lucas Lima");
  f1.exibirDados();

  print("");

  Funcionario f2 = Funcionario.pleno("Beatriz Silva", 4500.0);
  f2.exibirDados();

  print("");

  Funcionario f3 = Funcionario.gerente(nome: "Ricardo Santos", bonus: 2500.0);
  f3.exibirDados();
}