class Conta {
  String _titular;
  double _saldo;

  Conta(this._titular, this._saldo);

  double get saldo => _saldo;
  
  void setSaldo(double valor) => _saldo = valor;

  void exibirSaldo() {
    print("💰 Saldo atual da conta de $_titular: R\$${_saldo.toStringAsFixed(2)}");
  }
}