import 'Conta.dart';

void main() {
  Conta c1 = Conta.bancaria("123-X", "João Silva");
  c1.exibirResumo();
  c1.depositar(150.50);
  c1.sacar(50.0);
  c1.exibirResumo();

  print("");

  Conta c2 = Conta.vip("999-V", "Empresa ABC", 5000.0);
  c2.exibirResumo();
  c2.sacar(1000.0);
  c2.exibirResumo();
}