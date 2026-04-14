import 'Usuario.dart';

void main() {
  Usuario u1 = Usuario("Gabriel Oliveira", "gabriel@email.com", "Gabs");
  u1.exibirPerfil();

  print("");

  Usuario u2 = Usuario("Mariana Costa", "mariana@email.com");
  u2.exibirPerfil();
}