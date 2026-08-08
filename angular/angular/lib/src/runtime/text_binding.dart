import 'package:meta/dart2js.dart' as dart2js;
import 'package:angulardart/src/runtime/check_binding.dart';

import 'interpolate.dart';
import 'browser_render_node.dart';
import 'render_node.dart';

/// Wraps an HTML [Text] node, implementing change detection to make updating
/// the node's text property very fast.
/// This class is used in place of code-generated change detection in
/// Angular's .template.dart files, giving two benefits:
///    - avoids code duplication
///    - creates a hot function which JS engines (e.g. V8) can optimize.
class TextBinding {
  Object? _currentValue = '';

  /// Le nœud sous-jacent (Text pour browser, ServerRenderNode pour serveur).
  final RenderNode node;

  // This is a size optimization. dart2js will hoist the element field
  // initializer to a TextBinding constructor parameter, duplicating that
  // code in generated .template.dart files. Annotating an empty constructor
  // as noInline avoids that cost.
  @dart2js.noInline
  TextBinding() : node = _createDefaultNode();

  static RenderNode _createDefaultNode() {
    return BrowserRenderNode.text('');
  }

  /// Met à jour le texte du nœud si [newValue] diffère de la valeur précédente.
  void updateText(String newValue) {
    if (checkBinding(_currentValue, newValue)) {
      node.setText(newValue);
      _currentValue = newValue;
    }
  }

  /// Met à jour le texte avec une valeur primitive (interpolation).
  void updateTextWithPrimitive(Object? newValue) {
    if (checkBinding(_currentValue, newValue)) {
      node.setText(interpolate0(newValue));
      _currentValue = newValue;
    }
  }

  /// Retourne le nœud sous-jacent pour la compatibilité avec le code généré.
  RenderNode get element => node;
}
