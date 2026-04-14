class Funcionario {
  String _nome;
  String _cargo;
  double _salario;

  Funcionario.estagiario(this._nome)
      : _cargo = "Estagiário",
        _salario = 1200.0;

  Funcionario.pleno(this._nome, this._salario) : _cargo = "Pleno";

  Funcionario.gerente({required String nome, double bonus = 1000})
      : _nome = nome,
        _cargo = "Gerente",
        _salario = 8000.0 + bonus;

  double calcularPagamentoMensal() {
    return _salario;
  }

  void exibirDados() {
    print("---- Dados do Funcionário ----");
    print("Nome: $_nome");
    print("Cargo: $_cargo");
    print("Salário: R\$${_salario.toStringAsFixed(2)}");
    print("Pagamento: R\$${calcularPagamentoMensal().toStringAsFixed(2)}");
    print("------------------------------");
  }
}