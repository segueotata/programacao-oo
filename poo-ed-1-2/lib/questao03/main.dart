import 'Aluno.dart';

void main() {
  Aluno a1 = Aluno(
    ra: "2024001",
    nome: "Carlos Silva",
    notaFinal: 7.5,
  );

  a1.exibirBoletim();

  Aluno a2 = Aluno(
    ra: "2024002",
    nome: "Ana Souza",
    notaFinal: 5.0,
  );

  print("");
  a2.exibirBoletim();
}