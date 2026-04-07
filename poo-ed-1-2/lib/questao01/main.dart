import 'Lampada.dart';

int main() {
    Lampada l = new Lampada();

    l.exibirEstado();

    l.ligar();
    l.aumentarIntensidade();
    l.aumentarIntensidade();
    l.aumentarIntensidade();
    l.aumentarIntensidade();
    l.aumentarIntensidade();
    l.aumentarIntensidade();

    l.exibirEstado();

    return 0;
}