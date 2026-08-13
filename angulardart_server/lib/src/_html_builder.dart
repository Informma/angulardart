/// Constructeur de cha ne HTML pour le rendu ct serveur.
///
/// Utilis par [ServerRenderNode] (Phase 2) pour accumuler du HTML string
/// au lieu de manipuler le DOM.
class HtmlBuilder {
  final StringBuffer _buffer = StringBuffer();

  void openTag(String tag, [Map<String, String>? attrs]) {
    if (attrs == null || attrs.isEmpty) {
      _buffer.write('<$tag>');
    } else {
      final attrStr = attrs.entries.map((e) {
        if (e.value == '') {
          return ' ${e.key}';
        }
        final escaped = e.value.replaceAll('&', '&amp;').replaceAll('"', '&quot;');
        return ' ${e.key}="$escaped"';
      }).join();
      _buffer.write('<$tag$attrStr>');
    }
  }

  void closeTag(String tag) {
    _buffer.write('</$tag>');
  }

  void text(String value) {
    _buffer.write(value
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;'));
  }

  void innerHtml(String value) {
    _buffer.write(value);
  }

  void comment(String content) {
    _buffer.write('<!--$content-->');
  }

  void append(HtmlBuilder child) {
    _buffer.write(child.toString());
  }

  void selfClosingTag(String tag, [Map<String, String>? attrs]) {
    if (attrs == null || attrs.isEmpty) {
      _buffer.write('<$tag />');
    } else {
      final attrStr = attrs.entries.map((e) {
        if (e.value == '') {
          return ' ${e.key}';
        }
        final escaped = e.value.replaceAll('&', '&amp;').replaceAll('"', '&quot;');
        return ' ${e.key}="$escaped"';
      }).join();
      _buffer.write('<$tag$attrStr />');
    }
  }

  @override
  String toString() => _buffer.toString();

  void clear() {
    _buffer.clear();
  }
}
