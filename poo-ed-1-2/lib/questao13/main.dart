import 'Pessoa.dart';
import 'Carteira.dart';

void main() {
  // 1. Criando objeto na memória
  Pessoa? p1 = Pessoa("João", Carteira(50.0));
  
  print("--- Estado Inicial ---");
  p1.exibirStatus();

  // 2. p2 recebe a mesma referência de p1
  Pessoa? p2 = p1;

  // 3. Alterando saldo via p2
  p2.carteira.saldo = 150.0;

  print("\n--- Após alteração via p2 ---");
  print("Acessando por p1:");
  p1.exibirStatus();
  print("Acessando por p2:");
  p2.exibirStatus();

  // 4. Atribuindo null a p1
  print("\n--- Atribuindo null a p1 ---");
  p1 = null;
  print("p1 agora é nulo. p2 ainda aponta para o objeto:");
  p2.exibirStatus();

  // 5. Atribuindo null a p2
  print("\n--- Atribuindo null a p2 ---");
  p2 = null;
  print("p2 agora é nulo. Nenhuma variável aponta mais para o objeto.");
}