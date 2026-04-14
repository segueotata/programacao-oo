class Caixa {
  double _valor;

  Caixa(this._valor);

  double get valor => _valor;
  set valor(double novoValor) => _valor = novoValor;

  void exibir() {
    print("📦 Valor na Caixa: $_valor");
  }
}

void alterarValor(Caixa c) {
  // Modifica o conteúdo do objeto apontado pela referência
  c.valor = 500.0;
  print("Interno alterarValor: Valor modificado para 500.0");
}

void trocarCaixa(Caixa c) {
  // Tenta reatribuir a variável local 'c' para um novo objeto
  c = Caixa(999.0); 
  print("Interno trocarCaixa: Variável local 'c' agora aponta para nova caixa de 999.0");
}