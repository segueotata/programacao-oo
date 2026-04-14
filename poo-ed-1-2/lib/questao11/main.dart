import 'Cliente.dart';
import 'Endereco.dart';

void main() {
  // 1. Criar cliente original
  Endereco end1 = Endereco("Rua das Flores", 100, "Curitiba");
  Cliente c1 = Cliente("Pedro", end1);

  // 2. Criar cópia manual (instanciando novo endereço internamente)
  Cliente c2 = Cliente.copia(c1);

  // 3. Alterar apenas o endereço do cliente 2
  c2.endereco.rua = "Avenida Central";

  print("--- Dados do Cliente 1 (Original) ---");
  c1.exibirDados();

  print("\n--- Dados do Cliente 2 (Cópia) ---");
  c2.exibirDados();
}