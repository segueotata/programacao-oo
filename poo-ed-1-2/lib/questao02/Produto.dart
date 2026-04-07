class Produto {
    String _nome;
    double _preco;
    int _estoque;

    Produto(this._nome, this._preco, this._estoque);

    void repor(int qtd) {
        print("🔹 AÇÃO DE REPOSIÇÃO");
        if (qtd <= 0) {
            print("⚠️  Insira um valor válido");
        } else {
            _estoque += qtd;
            print("🔹 Estoque atualizado: [$_estoque] [+$qtd]");
        }
    }

    void vender(int qtd) {
        print("🔹 AÇÃO DE VENDA");
        if (qtd <= 0) {
            print("⚠️  Insira um valor válido");
        } else {
            double montanteTotalVendido;
            montanteTotalVendido = (_preco * qtd);

            _estoque -= qtd;
            print("🔹 Estoque atualizado: [$_estoque] [-$qtd]");
            print("Valor total ${qtd > 1 ? "das" : "da"} ${qtd > 1 ? "vendas" : "venda"}: R\$${montanteTotalVendido.toStringAsFixed(2)}");
        }
    }

    void exibirFicha() {
        print("---- Ficha do Produto ----");
        print("Nome: $_nome");
        print("Preço: $_preco");
        print("Qtd. Estoque: $_estoque");
    }
}