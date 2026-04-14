class Endereco {
  String _rua;
  int _numero;
  String _cidade;

  Endereco(this._rua, this._numero, this._cidade);

  // Getters para permitir leitura em outros arquivos
  String get rua => _rua;
  int get numero => _numero;
  String get cidade => _cidade;

  // Setter para permitir alteração solicitada no main
  set rua(String valor) => _rua = valor;
  
  void exibir() {
    print("Rua: $_rua, $_numero - $_cidade");
  }
}