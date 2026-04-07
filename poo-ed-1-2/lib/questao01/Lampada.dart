class Lampada {
    bool _ligada;
    int _intensidade;

    Lampada()
        : _ligada = false,
          _intensidade = 50;

    void ligar() {
        _ligada = true;
        print("🔹 🟢 Lâmpada foi ligada");
    }

    void desligar() {
        _ligada = false;
        print("🔹 🔴 Lâmpada foi desligada");
    }

    void aumentarIntensidade() {
        if (_intensidade < 100) {
            _intensidade += 10;
            if (_intensidade > 100) _intensidade = 100;
            print("🔹 Intensidade aumentada para [$_intensidade]");
        } else {
            print("⚠️  A intensidade já está no máximo");
        }
    }

    void diminuirIntensidade() {
        if (_intensidade > 0) {
            _intensidade -= 10;
            if (_intensidade < 0) _intensidade = 0;
            print("🔹 Intensidade diminuída para [$_intensidade]");
        } else {
            print("⚠️ A intensidade já está no mínimo");
        }
    }

    void exibirEstado() {
        print("---- Estado ----");
        print("Ligada?: ${_ligada ? "🟢 Ligada" : "🔴 Desligada"}");
        print("Intensidade: $_intensidade");
    }
}