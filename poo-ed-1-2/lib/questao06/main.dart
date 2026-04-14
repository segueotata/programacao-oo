import 'Retangulo.dart';

void main() {
  Retangulo r1 = Retangulo(10.0, 5.0);
  print("Construtor Padrão:");
  r1.exibirDados();

  Retangulo r2 = Retangulo.vazio();
  print("\nConstrutor Vazio (1x1):");
  r2.exibirDados();

  Retangulo r3 = Retangulo.quadrado(4.0);
  print("\nConstrutor Nomeado (Quadrado):");
  r3.exibirDados();
}