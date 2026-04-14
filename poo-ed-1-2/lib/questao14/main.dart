import 'Gerente.dart';
import 'Conta.dart';

void main() {
  // Criação da instância única de Conta
  Conta contaUnica = Conta("Empresa Global", 1000.0);
  contaUnica.exibirSaldo();

  // Criação de dois gerentes distintos
  Gerente gerenteA = Gerente("Carlos");
  Gerente gerenteB = Gerente("Ana");

  print("\n--- Operações ---");
  gerenteA.depositar(contaUnica, 500.0);
  contaUnica.exibirSaldo();

  gerenteB.sacar(contaUnica, 200.0);
  contaUnica.exibirSaldo();

  gerenteA.sacar(contaUnica, 1400.0); // Tentativa de saque alto
  contaUnica.exibirSaldo();
}