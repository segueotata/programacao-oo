import 'Conta.dart';

class Gerente {
  String _nome;

  Gerente(this._nome);

  void depositar(Conta conta, double valor) {
    print("🏢 Gerente $_nome realizando depósito...");
    conta.setSaldo(conta.saldo + valor);
  }

  void sacar(Conta conta, double valor) {
    print("🏢 Gerente $_nome realizando saque...");
    if (valor <= conta.saldo) {
      conta.setSaldo(conta.saldo - valor);
    } else {
      print("⚠️ Saldo insuficiente para o gerente $_nome realizar a operação.");
    }
  }
}