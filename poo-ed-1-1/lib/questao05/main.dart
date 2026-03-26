import 'aluno.dart';

List<Aluno> alunos = [
    Aluno("Braz", 10, -5),
    Aluno("Antonio", 8.2, -4.6),
    Aluno("Julya", 11.3, 5.3),
    Aluno("Joelma", 10, 5.8),
    Aluno("João", 9.2, -2.4),
    Aluno("Pedro", 4.3, 6.4),
    Aluno("Maria", 1.9, 7.7),
    Aluno("Evellyn", 10, 19.6),
    Aluno("Márcia", -14.2, 6.4),
    Aluno("Rogério", 8.6, 7.5),
];

int main() {
    for (var a in alunos) {
        a.exibirBoletim();
    };

    return 0;
}