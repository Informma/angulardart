/// Native/AOT platform stub implementation of DOM APIs for angulardart_seo.
///
/// On the server there is no document head to mutate: SEO metadata is instead
/// collected via [TransferState] (see `seo_service.dart`) and injected into the
/// SSR HTML by `platform_server`. These stubs only need to *compile* against the
/// browser-facing API; every operation is a no-op.
library;

/// Base element stub shared by all concrete element stubs.
///
/// Mirrors `html.Element` so `document.createElement()` results can be cast to
/// the concrete element types (`as HTMLMetaElement`, etc.).
class Element {
  String? getAttribute(String name) => null;
  void setAttribute(String name, String value) {}
  void remove() {}
}

/// Document stub. [title] is a no-op store so that `SeoService`/`TitleService`
/// compile and behave identically on the server.
class Document {
  String title = '';
  HTMLHeadElement? get head => null;
  Element createElement(String tag) => Element();
  Element? querySelector(String selector) => null;
}

class HTMLHeadElement implements Element {
  @override
  String? getAttribute(String name) => null;
  @override
  void setAttribute(String name, String value) {}
  @override
  void remove() {}
  void append(Element child) {}
}

class HTMLMetaElement implements Element {
  String content = '';
  String? name;
  String? httpEquiv;
  @override
  String? getAttribute(String name) => null;
  @override
  void setAttribute(String name, String value) {}
  @override
  void remove() {}
}

class HTMLLinkElement implements Element {
  String href = '';
  String? type;
  String? title;
  String rel = '';
  String? hreflang;
  @override
  String? getAttribute(String name) => null;
  @override
  void setAttribute(String name, String value) {}
  @override
  void remove() {}
}

class HTMLScriptElement implements Element {
  String? type;
  String? id;
  String text = '';
  @override
  String? getAttribute(String name) => null;
  @override
  void setAttribute(String name, String value) {}
  @override
  void remove() {}
}

Document get document => Document();
