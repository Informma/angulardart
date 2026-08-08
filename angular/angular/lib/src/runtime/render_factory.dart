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
import 'package:web/web.dart' as web;

import 'browser_render_node.dart';
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
    final doc = web.document;
    web.Element element;

    switch (tagName.toLowerCase()) {
      case 'div':
        element = doc.createElement('div') as web.HTMLDivElement;
      case 'span':
        element = doc.createElement('span') as web.HTMLSpanElement;
      case 'a':
        element = doc.createElement('a') as web.HTMLAnchorElement;
      case 'img':
        element = doc.createElement('img') as web.HTMLImageElement;
      case 'input':
        element = doc.createElement('input') as web.HTMLInputElement;
      case 'button':
        element = doc.createElement('button') as web.HTMLButtonElement;
      case 'select':
        element = doc.createElement('select') as web.HTMLSelectElement;
      case 'textarea':
        element = doc.createElement('textarea') as web.HTMLTextAreaElement;
      case 'ul':
        element = doc.createElement('ul') as web.HTMLUListElement;
      case 'ol':
        element = doc.createElement('ol') as web.HTMLOListElement;
      case 'li':
        element = doc.createElement('li') as web.HTMLLIElement;
      case 'p':
        element = doc.createElement('p') as web.HTMLParagraphElement;
      case 'h1':
      case 'h2':
      case 'h3':
      case 'h4':
      case 'h5':
      case 'h6':
        element = doc.createElement(tagName.toLowerCase()) as web.HTMLElement;
      default:
        element = doc.createElement(tagName);
    }

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
