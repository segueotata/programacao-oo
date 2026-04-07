import 'Produto.dart';

int main() {
    Produto p1 = Produto("Computador Gamer", 4500, 10);
    p1.exibirFicha();

    p1.vender(2);

    p1.repor(3);

    p1.exibirFicha();

    return 0;
}