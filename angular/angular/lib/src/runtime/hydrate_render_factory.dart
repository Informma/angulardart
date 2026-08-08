/// RenderFactory qui rutilise les nuds DOM existants (hydration).
///
/// Pendant l'hydration, au lieu de crer de nouveaux lments DOM, cette factory
/// recherche les lments dj prsents dans le HTML ssr en utilisant les marqueurs
/// `data-ng-id` assigns ct serveur.
///
/// ## Fonctionnement
///
/// 1. Ct serveur : chaque nud est marqu avec `data-ng-id="n"` o `n` est un
///    index unique incrmental.
/// 2. Ct client : [HydrateRenderFactory] scanne le DOM existant et construit
///    une map `[ngId -> Element]`.
/// 3. Quand le code gnr appelle [createElement], la factory lookup l'lment
///    existant au lieu d'en crer un nouveau.
import 'dom_apis.dart';

import 'browser_render_node.dart';
import 'render_factory.dart';
import 'render_node.dart';
import 'server_render_node.dart';

/// RenderFactory pour l'hydration SSR->CSR.
///
/// S'tend [RenderFactory] et remplace [createElement], [createText] et
/// [createComment] pour rutiliser les nuds DOM existants au lieu d'en crer
/// de nouveaux.
class HydrateRenderFactory extends RenderFactory {
  final DomDocument _doc;
  final Map<String, DomElement> _elementMap = {};
  final Map<String, DomText> _textNodeMap = {};
  int _nextId = 0;

  /// Crée une nouvelle instance et scanne le DOM pour construire la map.
  factory HydrateRenderFactory() {
    final doc = document;
    final factory = HydrateRenderFactory._(doc);
    factory._scanDom();
    return factory;
  }

  HydrateRenderFactory._(this._doc);

  /// Scanne tout le DOM pour trouver les éléments avec data-ng-id.
  void _scanDom() {
    // Trouver l'élément racine marqué par le serveur
    final rootEl = _doc.documentElement;
    if (rootEl == null) return;

    // Parcourir récursivement tous les nœuds pour trouver ceux avec data-ng-id
    _walkNodes(rootEl);

    // Déterminer le prochain ID disponible
    int maxId = 0;
    for (final id in _elementMap.keys) {
      final parsed = int.tryParse(id);
      if (parsed != null && parsed >= maxId) {
        maxId = parsed + 1;
      }
    }
    _nextId = maxId;

    // Marquer les éléments existants comme serverRendered
    for (final el in _elementMap.values) {
      el.setAttribute('data-ng-server-rendered', 'true');
    }
  }

  /// Parcourt récursivement tous les nœuds enfants.
  void _walkNodes(DomNode node) {
    if (node is DomElement) {
      final idStr = node.getAttribute('data-ng-id');
      if (idStr != null) {
        _elementMap[idStr] = node;
      }

      // Parcourir les enfants
      var child = node.firstChild;
      while (child != null) {
        _walkNodes(child);
        child = child.nextSibling;
      }
    }
  }

  @override
  RenderNode createElement(String tagName) {
    final id = _nextId.toString();
    _nextId++;

    // Chercher l'élément existant dans le DOM ssr
    final existing = _elementMap[id];
    if (existing != null && existing.tagName.toLowerCase() == tagName.toLowerCase()) {
      return BrowserRenderNode(existing);
    }

    // Fallback : créer un nouvel élément si pas trouvé (incohérence SSR/CSR)
    final doc = document;
    DomElement element;
    switch (tagName.toLowerCase()) {
      case 'div':
        element = doc.createElement('div');
      case 'span':
        element = doc.createElement('span');
      case 'a':
        element = doc.createElement('a');
      case 'img':
        element = doc.createElement('img');
      case 'input':
        element = doc.createElement('input');
      case 'button':
        element = doc.createElement('button');
      case 'select':
        element = doc.createElement('select');
      case 'textarea':
        element = doc.createElement('textarea');
      case 'ul':
        element = doc.createElement('ul');
      case 'ol':
        element = doc.createElement('ol');
      case 'li':
        element = doc.createElement('li');
      case 'p':
        element = doc.createElement('p');
      case 'h1':
      case 'h2':
      case 'h3':
      case 'h4':
      case 'h5':
      case 'h6':
        element = doc.createElement(tagName.toLowerCase());
      default:
        element = doc.createElement(tagName);
    }

    // Marquer avec l'ID pour les enfants à venir
    element.setAttribute('data-ng-id', id);
    _elementMap[id] = element;

    return BrowserRenderNode(element);
  }

  @override
  RenderNode createText(String content) {
    final id = _nextId.toString();
    _nextId++;

    // Chercher un nœud texte existant avec cet ID
    final existingText = _textNodeMap[id];
    if (existingText != null) {
      return BrowserRenderNode(existingText);
    }

    // Fallback : créer un nouveau nœud texte
    return BrowserRenderNode.text(content);
  }

  @override
  RenderNode createComment() {
    _nextId++;

    // Les commentaires sont difficiles à localiser dans le DOM ssr,
    // on crée toujours un nouveau nœud commentaire
    return BrowserRenderNode.comment();
  }

  /// Retourne les styles encapsulés collectés pendant le rendu serveur.
  List<String> get collectedStyles => ServerRenderNode.collectedStyles;

  /// Indique si l'hydration est possible (DOM ssr détecté).
  bool get hasServerDom => _elementMap.isNotEmpty;
}
