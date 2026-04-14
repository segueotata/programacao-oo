class Carteira {
  double _saldo;

  Carteira(this._saldo);

  double get saldo => _saldo;
  set saldo(double valor) => _saldo = valor;

  @override
  String toString() => "Saldo: R\$${_saldo.toStringAsFixed(2)}";
}