class Aluno {
    String _nome = "";
    double _nota1 = 0;
    double _nota2 = 0;

    get nome => _nome;
    set nome(String n) {
        _nome = n;
    }

    get nota1 => _nota1;
    set nota1(double v) {
        if (v >= 0 && v <= 10) {
            _nota1 = v;
        } else {
            print("❌ ERRO: Nota 1 não pode receber o valor: [$v] | Mantendo valor default: [$_nota1]");
        }
    }

    get nota2 => _nota2;
    set nota2(double v) {
        if (v >= 0 && v <= 10) {
            _nota2 = v;
        } else {
            print("❌ ERRO: Nota 2 não pode receber o valor: [$v] | Mantendo valor default: [$_nota2]");
        }
    }

    Aluno(String nome, double nota1, double nota2) {
        this.nome = nome;
        this.nota1 = nota1;
        this.nota2 = nota2;
    }

    double calcularMedia(double n1, double n2) {
        return (n1 + n2) / 2;
    }

    bool verificarAprovacao(double m) {
        if (m >= 6) {
            return true; 
        } else {
            return false;
        }
    }

    void exibirBoletim() {
        double media = calcularMedia(this.nota1, this.nota2);
        bool situacao = verificarAprovacao(media);
        print("🔹 Nome: $nome\nNota 1: $nota1 | Nota 2: $nota2\nMédia: ${media.toStringAsFixed(1)}\nSituação: ${situacao ? "✅ Aprovado" : "❌ Reprovado"}");
        print("------------------------------");
    }
}