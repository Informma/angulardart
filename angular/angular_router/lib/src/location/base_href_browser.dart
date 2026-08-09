library;

// ignore: depend_on_referenced_packages
import 'package:web/web.dart' as web;

final _urlParsingNode = web.HTMLAnchorElement();
web.Element? _baseElement;

String? baseHrefFromDOM() {
  var href = _getBaseElementHref();
  if (href == null) return null;
  return _relativePath(href);
}

String? _getBaseElementHref() {
  _baseElement ??= web.document.querySelector('base') as web.Element;
  return _baseElement?.getAttribute('href');
}

String _relativePath(String url) {
  _urlParsingNode.href = url;
  var pathname = _urlParsingNode.pathname;
  return (pathname.isEmpty || pathname[0] == '/') ? pathname : '/$pathname';
}
