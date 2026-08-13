/// RenderFactory qui réutilise les nœuds DOM existants (hydration).
///
/// Pendant l'hydration, au lieu de créer de nouveaux éléments DOM, cette
/// factory recherche les éléments déjà présents dans le HTML SSR en utilisant
/// les marqueurs `data-ng-id` assignés côté serveur.
///
/// ## Fonctionnement
///
/// 1. Côté serveur : chaque nœud est marqué avec `data-ng-id="n"` où `n` est un
///    index unique incrémental.
/// 2. Côté client : [HydrateRenderFactory] scanne le DOM existant et construit
///    une map `[ngId -> Element]`.
/// 3. Quand le code généré appelle [createElement], la factory réutilise
///    l'élément existant au lieu d'en créer un nouveau.
import 'dom_apis.dart';

import 'browser_render_node.dart'
    if (dart.library.io) 'browser_render_node_vm.dart';
import 'render_factory.dart';
import 'render_node.dart';
import 'server_render_node.dart';

/// RenderFactory pour l'hydration SSR->CSR.
///
/// Étend [RenderFactory] et remplace [createElement], [createText] et
/// [createComment] pour réutiliser les nœuds DOM existants au lieu d'en créer
/// de nouveaux.
class HydrateRenderFactory extends RenderFactory {
  final dynamic _doc;
  final Map<String, dynamic> _elementMap = {};
  final Map<String, dynamic> _textNodeMap = {};
  int _nextId = 0;
  ServerRenderContext? _serverRenderContext;

  /// Configure le contexte de rendu serveur pour l'hydration.
  void setServerRenderContext(ServerRenderContext context) {
    _serverRenderContext = context;
  }

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
    // Trouver l'élément racine marqué par le serveur.
    final rootEl = _doc.documentElement;
    if (rootEl == null) return;

    // Parcourir récursivement tous les nœuds pour trouver ceux avec data-ng-id.
    _walkNodes(rootEl);

    // Déterminer le prochain ID disponible.
    int maxId = 0;
    for (final id in _elementMap.keys) {
      final parsed = int.tryParse(id);
      if (parsed != null && parsed >= maxId) {
        maxId = parsed + 1;
      }
    }
    _nextId = maxId;

    // Marquer les éléments existants comme serverRendered.
    for (final el in _elementMap.values) {
      el.setAttribute('data-ng-server-rendered', 'true');
    }
  }

  /// Parcourt récursivement tous les nœuds enfants.
  void _walkNodes(dynamic node) {
    // nodeType == 1 correspond à ELEMENT_NODE (les nœuds texte/commentaire
    // n'ont pas d'attributs data-ng-id).
    if (node.nodeType == 1) {
      final idStr = node.getAttribute('data-ng-id') as String?;
      if (idStr != null) {
        _elementMap[idStr] = node;
      }

      var child = node.firstChild;
      while (child != null) {
        _walkNodes(child);
        child = child.nextNode;
      }
    }
  }

  @override
  RenderNode createElement(String tagName) {
    final id = _nextId.toString();
    _nextId++;

    // Chercher l'élément existant dans le DOM SSR.
    final existing = _elementMap[id];
    if (existing != null &&
        (existing.tagName as String).toLowerCase() == tagName.toLowerCase()) {
      return BrowserRenderNode(existing);
    }

    // Fallback : créer un nouvel élément si pas trouvé (incohérence SSR/CSR).
    final element = _doc.createElement(tagName);
    element.setAttribute('data-ng-id', id);
    _elementMap[id] = element;

    return BrowserRenderNode(element);
  }

  @override
  RenderNode createText(String content) {
    final id = _nextId.toString();
    _nextId++;

    // Chercher un nœud texte existant avec cet ID.
    final existingText = _textNodeMap[id];
    if (existingText != null) {
      return BrowserRenderNode(existingText);
    }

    // Fallback : créer un nouveau nœud texte.
    return BrowserRenderNode.text(content);
  }

  @override
  RenderNode createComment() {
    _nextId++;

    // Les commentaires sont difficiles à localiser dans le DOM SSR,
    // on crée toujours un nouveau nœud commentaire.
    return BrowserRenderNode.comment();
  }

  /// Retourne les styles encapsulés collectés pendant le rendu serveur.
  List<String> get collectedStyles {
    final ctx = _serverRenderContext;
    if (ctx == null) return <String>[];
    return ctx.collectedStyles;
  }

  /// Retourne le contexte de rendu serveur courant.
  ServerRenderContext? get serverRenderContext => _serverRenderContext;

  /// Indique si l'hydration est possible (DOM SSR détecté).
  bool get hasServerDom => _elementMap.isNotEmpty;
}
