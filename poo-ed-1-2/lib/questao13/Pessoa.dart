import 'Carteira.dart';

class Pessoa {
  String _nome;
  Carteira _carteira;

  Pessoa(this._nome, this._carteira);

  Carteira get carteira => _carteira;

  void exibirStatus() {
    print("👤 Nome: $_nome | 💳 ${_carteira.toString()}");
  }
}