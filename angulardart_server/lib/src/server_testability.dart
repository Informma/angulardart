/// Testabilit no-op pour le serveur.
///
/// Ct serveur, la testabilit n'est pas ncessaire car on ne fait qu'un seul
/// rendu sans interraction utilisateur.
class ServerTestability {
  const ServerTestability();

  bool get isStable => true;

  void whenStable(void Function(bool didAsyncWork) callback) {
    Future.microtask(() => callback(false));
  }
}
