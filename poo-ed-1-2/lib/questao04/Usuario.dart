class Usuario {
  String _nome;
  String _email;
  String _apelido;

  Usuario(this._nome, this._email, [String? apelido])
      : _apelido = apelido ?? _nome;

  void exibirPerfil() {
    print("---- Perfil do Usuário ----");
    print("Nome: $_nome");
    print("E-mail: $_email");
    print("Apelido: $_apelido");
  }
}