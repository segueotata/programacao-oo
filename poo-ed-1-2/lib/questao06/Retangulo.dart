class Retangulo {
  double _largura;
  double _altura;

  Retangulo(this._largura, this._altura);

  Retangulo.vazio()
      : _largura = 1.0,
        _altura = 1.0;

  Retangulo.quadrado(double lado)
      : _largura = lado,
        _altura = lado;

  double calcularArea() {
    return _largura * _altura;
  }

  double calcularPerimetro() {
    return 2 * (_largura + _altura);
  }

  void exibirDados() {
    print("---- Dados do Retângulo ----");
    print("Largura: $_largura");
    print("Altura: $_altura");
    print("Área: ${calcularArea()}");
    print("Perímetro: ${calcularPerimetro()}");
    print("----------------------------");
  }
}