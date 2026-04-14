class Personagem {
  String _nome;
  int _vida;
  int _energia;

  Personagem(this._nome, this._vida, this._energia);

  set vida(int valor) => _vida = valor;

  void exibirEstado() {
    print("Personagem: $_nome | Vida: $_vida | Energia: $_energia");
  }
}
