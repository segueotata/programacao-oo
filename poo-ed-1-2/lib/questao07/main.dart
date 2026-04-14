import 'Personagem.dart';

void main() {
  Personagem p1 = Personagem("Guerreiro", 100, 50);

  print("--- Estado Inicial (p1) ---");
  p1.exibirEstado();

  // Atribuindo a mesma instância a uma segunda variável
  Personagem p2 = p1;

  // Alterando a vida através da segunda variável
  p2.vida = 80;

  print("\n--- Após alteração via p2 ---");
  print("Exibindo p1:");
  p1.exibirEstado();
  print("Exibindo p2:");
  p2.exibirEstado();
}