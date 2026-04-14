import 'Televisao.dart';

class ControleRemoto {
  Televisao _tv;

  ControleRemoto(this._tv);

  void aumentarVolume() {
    _tv.volume++;
    print("🔊 Volume aumentado para: ${_tv.volume}");
  }

  void diminuirVolume() {
    if (_tv.volume > 0) {
      _tv.volume--;
      print("🔉 Volume diminuído para: ${_tv.volume}");
    }
  }

  void proximoCanal() {
    _tv.canal++;
    print("⏭️ Mudou para o canal: ${_tv.canal}");
  }

  void canalAnterior() {
    if (_tv.canal > 1) {
      _tv.canal--;
      print("⏮️ Mudou para o canal: ${_tv.canal}");
    }
  }
}
