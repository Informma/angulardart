/// Abstraction pour les nœuds de rendu.
///
/// Permet au template compiler de générer du code compatible à la fois avec
/// le DOM réel (côté client) et la construction HTML string (côté serveur).
///
/// ## Architecture
///
/// ```
///                  RenderNode (abstract)
///                 /                      \
///       BrowserRenderNode         ServerRenderNode
///       (wraps web.Element)       (wraps HtmlBuilder)
///               |                          |
///       Manipulation DOM           Construction HTML string
/// ```
///
/// ## Exemple d'utilisation dans le code généré
///
/// ```dart
/// // Au lieu de:
/// _el_0 = appendDiv(doc, parentRenderNode);
/// _textBinding_1 = TextBinding('');
/// _el_0.append(_textBinding_1.element);
///
/// // On génère:
/// _el_0 = renderFactory.createElement('div', parentRenderNode);
/// _textBinding_1 = TextBinding(_el_0);
/// _el_0.appendChild(_textBinding_1.node);
/// ```
abstract class RenderNode {
  /// Nom de la balise HTML (ex: 'div', 'span', 'text').
  String get tagName;

  /// Ajoute un nœud enfant.
  void appendChild(RenderNode child);

  /// Définit une propriété sur l'élément.
  void setProperty(String name, Object? value);

  /// Définit un attribut HTML.
  void setAttribute(String name, String value);

  /// Définit une propriété de style CSS.
  void setStyle(String name, String? value);

  /// Ajoute ou retire une classe CSS.
  void setClass(String className, bool enabled);

  /// Définit le texte contenu dans ce nœud.
  void setText(String value);

  /// Récupère le contenu HTML brut.
  String get innerHtml;

  /// Définit le contenu HTML brut.
  set innerHtml(String value);

  /// Marque ce nœud comme étant issu du SSR (pour hydration).
  void markAsServerRendered({String? contentId});

  /// Indique si ce nœud est issu du rendu serveur.
  bool get isServerRendered => false;

  /// Applique une classe CSS shim pour l'encapsulation de styles.
  /// Utilisé par le template compiler pour les composants avec ViewEncapsulation.Emulated.
  void applyShimClass(String className);

  /// Ajoute ou retire une classe CSS de manière atomique.
  /// Utilisé par updateClassBinding pour les liaisons [class.xxx].
  void toggleClass(String className, bool enabled);

  /// Récupère le nœud sous-jacent (Element pour Browser, HtmlBuilder pour Server).
  Object get nativeNode;
}
