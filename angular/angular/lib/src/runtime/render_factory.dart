/// Factory pour créer des [RenderNode].
///
/// Retourne [BrowserRenderNode] ou [ServerRenderNode] selon le contexte.
/// Le contexte est déterminé par un flag global défini au démarrage de l'application.
///
/// ## Utilisation côté client (par défaut)
/// ```dart
/// // Par défaut, utilise BrowserRenderNode
/// final node = renderFactory.createElement('div');
/// ```
///
/// ## Utilisation côté serveur
/// ```dart
/// // Avant le rendu SSR :
/// renderFactory.useServerMode();
/// final node = renderFactory.createElement('div');
/// // ... construction du DOM virtuel ...
/// String html = (rootNode as ServerRenderNode).toHtml();
/// ```
import 'dom_apis.dart';

import 'browser_render_node.dart' if (dart.library.io) 'browser_render_node_vm.dart';
import 'render_node.dart';
import 'server_render_node.dart';

/// Instance globale de la factory.
RenderFactory get renderFactory => RenderFactory.instance;

class RenderFactory {
  static RenderFactory _instance = RenderFactory._();

  /// Retourne l'instance globale.
  static RenderFactory get instance => _instance;

  /// Définit une nouvelle instance (utile pour les tests).
  static set instance(RenderFactory value) {
    _instance = value;
  }

  bool _useServerMode = false;

  RenderFactory._();

  /// Default constructor for subclasses.
  RenderFactory();

  /// Active le mode serveur. Tous les nœuds créés seront des ServerRenderNode.
  void useServerMode() {
    _useServerMode = true;
  }

  /// Désactive le mode serveur (retour au mode navigateur).
  void useBrowserMode() {
    _useServerMode = false;
  }

  /// Indique si on est en mode serveur.
  bool get isServerMode => _useServerMode;

  /// Crée un nœud de type élément avec la balise donnée.
  RenderNode createElement(String tagName) {
    if (_useServerMode) {
      return ServerRenderNode(tagName.toLowerCase());
    }
    // Mode navigateur : crée un vrai élément DOM
    final doc = document;

    final element = doc.createElement(tagName);

    return BrowserRenderNode(element);
  }

  /// Crée un nœud de type texte.
  RenderNode createText(String content) {
    if (_useServerMode) {
      final node = ServerRenderNode('text');
      node.setText(content);
      return node;
    }
    return BrowserRenderNode.text(content);
  }

  /// Crée un nœud de type commentaire (utilisé comme ancre pour ngIf/ngFor).
  RenderNode createComment() {
    if (_useServerMode) {
      return ServerRenderNode('comment');
    }
    return BrowserRenderNode.comment();
  }
}
