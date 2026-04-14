class Conta {
  String _numero;
  String _titular;
  double _saldo;

  Conta.bancaria(this._numero, this._titular) : _saldo = 0.0;

  Conta.vip(this._numero, this._titular, double saldoInicial) : _saldo = saldoInicial;

  void depositar(double valor) {
    print("🔹 OPERAÇÃO: DEPÓSITO");
    if (valor <= 0) {
      print("⚠️  Insira um valor válido para depósito");
    } else {
      _saldo += valor;
      print("🔹 Valor de R\$${valor.toStringAsFixed(2)} depositado com sucesso.");
    }
  }

  void sacar(double valor) {
    print("🔹 OPERAÇÃO: SAQUE");
    if (valor <= 0) {
      print("⚠️  Insira um valor válido para saque");
    } else if (valor > _saldo) {
      print("⚠️  Saldo insuficiente para a operação");
    } else {
      _saldo -= valor;
      print("🔹 Saque de R\$${valor.toStringAsFixed(2)} realizado.");
    }
  }

  void exibirResumo() {
    print("---- Resumo da Conta ----");
    print("Número: $_numero");
    print("Titular: $_titular");
    print("Saldo Atual: R\$${_saldo.toStringAsFixed(2)}");
    print("-------------------------");
  }
}
