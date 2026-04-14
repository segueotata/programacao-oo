import 'Carro.dart';

class Oficina {
  void revisar(Carro carro) {
    print("🔧 Realizando revisão e teste de rodagem...");
    // Simula um teste que aumenta a quilometragem em 15km
    carro.quilometragem += 15.0;
  }
}