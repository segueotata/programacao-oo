import 'Endereco.dart';

class Cliente {
  String _nome;
  Endereco _endereco;

  Cliente(this._nome, this._endereco);

  // Agora usamos os GETTERS (sem underline) do objeto endereco
  Cliente.copia(Cliente outro)
      : _nome = outro._nome,
        _endereco = Endereco(
          outro._endereco.rua,
          outro._endereco.numero,
          outro._endereco.cidade,
        );

  Endereco get endereco => _endereco;

  void exibirDados() {
    print("Cliente: $_nome");
    _endereco.exibir();
  }
}