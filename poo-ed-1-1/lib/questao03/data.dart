class Data {
    int _dia = 0;
    int _mes = 0;
    int _ano = 0;

    Data(int d, int m, int a) {
        this.dia = d;
        this.mes = m;
        this.ano = a;
    }

    int get dia => _dia;
    set dia(int v) {
        if (v >= 1 && v <= 31) {
            _dia = v;
        } else {
            print("Valor {$v} fora do padrão definido. Mantendo valor antigo {$_dia}");
        }
    }

    int get mes => _mes;
    set mes(int v) {
        if (v >= 1 && v <= 12) {
            _mes = v;
        } else {
            print("Valor {$v} fora do padrão definido. Mantendo valor antigo {$_mes}");
        }
    }

    int get ano => _ano;
    set ano(int v) {
        if (v >= 0) {
            _ano = v;
        } else {
            print("Valor {$v} fora do padrão definido. Mantendo valor antigo {$_ano}");
        }
    }

    void exibirData() {
        String d = _dia.toString().padLeft(2, '0');
        String m = _mes.toString().padLeft(2, '0');
        String a = _ano.toString().padLeft(4, '0');

        print("$d/$m/$a");
        print("----------");
    }
}