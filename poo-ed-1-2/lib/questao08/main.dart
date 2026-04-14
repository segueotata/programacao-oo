import 'ControleRemoto.dart';
import 'Televisao.dart';

void main() {
  Televisao minhaTv = Televisao();
  ControleRemoto controle = ControleRemoto(minhaTv);

  print("--- Estado Inicial ---");
  minhaTv.exibirStatus();

  print("\n--- Usando o Controle ---");
  controle.aumentarVolume();
  controle.proximoCanal();
  controle.proximoCanal();
  controle.diminuirVolume();

  print("\n--- Estado Final da TV ---");
  minhaTv.exibirStatus();
}