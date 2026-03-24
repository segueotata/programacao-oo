class Lampada {
    bool estaLigada = false;
    int qtdVezesLigada = 0;
    bool estaQueimada = false;

    void ligar() {
        if (qtdVezesLigada >= 5) {
            estaQueimada = true;
        }

        if (estaLigada) {
            print("🔹 ❌ Lâmpada já está ligada.");
        } else {
            if (estaQueimada) {
                print("🔹 ❌ Lâmpada queimada. Não é possível ligar.");
            } else {
                estaLigada = !estaLigada;
                print("🔹 🟢 Lâmpada ligada.");
                qtdVezesLigada++;
            }
        }
    }

    void desligar() {
        if (!estaLigada) {
            print("🔹 ❌ Lâmpada já está desligada.");
        } else {
            estaLigada = !estaLigada;
            print("🔹 🔴 Lâmpada desligada.");
        }
    }

    void exibirEstado() {
        if (estaQueimada) {
            print("🔹 Estado da lâmpada: ❌ Queimada.");
            return;
        }

        if (estaLigada) {
            print("🔹 Estado da lâmpada: 🟢 Ligada.");
        } else {
            print("🔹 Estado da lâmpada: 🔴 Desligada.");
        }
    }

    void exibirMetaDados() {
        // print("----------");
        print("Ligada?: $estaLigada | Vezes Ligada: $qtdVezesLigada | Queimada?: $estaQueimada");
        print("----------");
    }
}