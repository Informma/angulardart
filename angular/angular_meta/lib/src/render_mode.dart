/// Mode de rendu pour un composant AngularDart.
///
/// Contrle si un composant doit tre rendu ct serveur (SSR), ct client (CSR),
/// ou automatiquement selon le contexte d'exécution.
enum RenderMode {
  /// Rendu ct serveur + hydration client.
  ///
  /// Le composant est rendu en HTML string ct serveur, puis le client
  /// rutilise le DOM existant via l'hydration.
  server,

  /// Rendu uniquement ct client (comportement par dfaut).
  ///
  /// Le composant n'est pas rendu ct serveur. Un placeholder vide est gnér
  /// si ce composant est inclus dans une page SSR.
  client,

  /// Auto-dtection : SSR si contexte serveur dtect, sinon CSR.
  ///
  /// quivalent `RenderMode.server` ct serveur et `RenderMode.client` ct client.
  automatic,
}
