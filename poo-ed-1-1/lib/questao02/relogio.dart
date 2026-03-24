class Relogio {
    int _hora = 0;
    int _minuto = 0;
    int _segundo = 0;

    Relogio(int h, int m, int s) {
        this.hora = h;
        this.minuto = m;
        this.segundo = s;
    }

    int get hora => _hora;
    set hora(int v) {
        if (v >= 0 && v <=23) {
            _hora = v;
        } else {
            print("Hora: {$v} inválida. Mantendo valor anterior {$_hora}");
        };
    }

    int get minuto => _minuto;
    set minuto(int v) {
        if (v >= 0 && v <=59) {
            _minuto = v;
        } else {
            print("Minuto: {$v} inválido. Mantendo valor anterior {$_minuto}");
        };
    }

    int get segundo => _segundo;
    set segundo(int v) {
        if (v >= 0 && v <=59) {
            _segundo = v;
        } else {
            print("Segundo: {$v} inválido. Mantendo valor anterior {$_segundo}");
        };
    }

    void exibirHorario() {
        String h = _hora.toString().padLeft(2, '0');
        String m = _minuto.toString().padLeft(2, '0');
        String s = _segundo.toString().padLeft(2, '0');

        print("$h:$m:$s");
        print("--------");
    }
}