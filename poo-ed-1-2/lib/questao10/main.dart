import 'Caixa.dart';

void main() {
  Caixa minhaCaixa = Caixa(100.0);

  print("--- Estado Inicial ---");
  minhaCaixa.exibir();

  print("\n--- Chamando alterarValor(minhaCaixa) ---");
  alterarValor(minhaCaixa);
  minhaCaixa.exibir();

  print("\n--- Chamando trocarCaixa(minhaCaixa) ---");
  trocarCaixa(minhaCaixa);
  minhaCaixa.exibir(); 
  print("(O valor no main não mudou para 999.0!)");
}