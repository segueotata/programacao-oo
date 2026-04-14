class Carro {
  String _modelo;
  double _quilometragem;

  Carro(this._modelo, this._quilometragem);

  double get quilometragem => _quilometragem;
  set quilometragem(double valor) => _quilometragem = valor;

  void exibirStatus() {
    print("🚗 Modelo: $_modelo | KM: $_quilometragem");
  }
}