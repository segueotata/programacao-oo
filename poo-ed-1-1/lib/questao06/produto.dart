class Produto {
    int _id;
    String _nome;
    double _precoUnitario;
    int _quantidade;
    
    Produto(int id, String nome, double precoUnitario, int quantidade)
        : _id = id > 0 ? id : 1,
            _nome = nome,
            _precoUnitario = precoUnitario >= 0 ? precoUnitario : 0.0,
            _quantidade = quantidade > 0 ? quantidade : 1 {
        this.id = id;
        this.nome = nome;
        this.precoUnitario = precoUnitario;
        this.quantidade = quantidade;
    }

    get id => _id;
    set id(int v) {
        if (v > 0) {
            _id = v;
        }
    }

    get nome => _nome;
    set nome(String n) {
        if (n.trim().isNotEmpty) {
            _nome = n;
        }
    }

    get precoUnitario => _precoUnitario;
    set precoUnitario(double v) {
        if (v >= 0) {
            _precoUnitario = v;
        }
    }

    get quantidade => _quantidade;
    set quantidade(int v) {
        if (v > 0) {
            _quantidade = v;
        }
    }

    double calcularDesconto() {
        if (quantidade <= 4) return 0;
        if (quantidade <= 9) return 0.05;
        if (quantidade <= 19) return 0.10;
        return 0.15;
    }

    double calcularTotal(double desconto) {
        double precoBruto = (precoUnitario * quantidade);
        double precoDescontado = (precoBruto * desconto);

        return precoBruto - precoDescontado;
    }

    void exibirResumo() {
        double desconto = calcularDesconto();
        double total = calcularTotal(desconto);

        print("Informações do produto:");
        print("ID: $id");
        print("Nome: $nome");
        print("Preço Unitário: R\$${precoUnitario.toStringAsFixed(2)}");
        print("Qtd.: $quantidade");
        print("Preço total para $quantidade ${quantidade > 1 ? "unidades" : "unidade"}: R\$$total");
        print("--------------------");
    }
}