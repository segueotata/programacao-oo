import 'Contato.dart';

class Agenda {
  List<Contato> _contatos;

  Agenda.vazia() : _contatos = [];

  Agenda.comContatos(List<Contato> contatos) : _contatos = contatos;

  void adicionarContato(Contato contato) {
    _contatos.add(contato);
    print("✅ Contato ${_nomeCurto(contato.nome)} adicionado.");
  }

  void removerContatoPorNome(String nome) {
    int tamanhoInicial = _contatos.length;
    _contatos.removeWhere((c) => c.nome.toLowerCase() == nome.toLowerCase());
    
    if (_contatos.length < tamanhoInicial) {
      print("🗑️ Contato $nome removido.");
    } else {
      print("⚠️ Contato $nome não encontrado.");
    }
  }

  void listarContatos() {
    print("\n--- 📖 Lista de Contatos ---");
    if (_contatos.isEmpty) {
      print("Agenda vazia.");
    } else {
      for (var contato in _contatos) {
        contato.exibir();
      }
    }
    print("---------------------------\n");
  }

  String _nomeCurto(String nome) => nome.split(" ")[0];
}