import 'ControleRemoto.dart';

class Televisao {
  int _canal;
  int _volume;

  Televisao()
      : _canal = 1,
        _volume = 10;

  void exibirStatus() {
    print("📺 TV Status -> Canal: $_canal | Volume: $_volume");
  }

  // Getters e Setters para permitir o acesso controlado pelo Controle
  int get volume => _volume;
  set volume(int valor) => _volume = valor;

  int get canal => _canal;
  set canal(int valor) => _canal = valor;
}
