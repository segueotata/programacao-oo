import 'Agenda.dart';
import 'Contato.dart';

void main() {
  // Testando Agenda Vazia
  print("=== Teste Agenda Vazia ===");
  Agenda agendaPessoal = Agenda.vazia();
  agendaPessoal.adicionarContato(Contato("Carlos Silva", "9999-1111"));
  agendaPessoal.listarContatos();

  // Testando Agenda com Contatos pré-existentes
  print("=== Teste Agenda com Contatos ===");
  List<Contato> listaInicial = [
    Contato("Ana Souza", "8888-2222"),
    Contato("Bruno Lima", "7777-3333")
  ];
  
  Agenda agendaTrabalho = Agenda.comContatos(listaInicial);
  agendaTrabalho.listarContatos();
  
  agendaTrabalho.removerContatoPorNome("Ana Souza");
  agendaTrabalho.listarContatos();
}