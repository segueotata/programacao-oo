import 'Oficina.dart';
import 'Carro.dart';

void main() {
  Carro meuCarro = Carro("Civic", 50000.0);

  print("--- Antes da Revisão ---");
  meuCarro.exibirStatus();

  Oficina oficina = Oficina();
  oficina.revisar(meuCarro);

  print("\n--- Depois da Revisão ---");
  meuCarro.exibirStatus();
}