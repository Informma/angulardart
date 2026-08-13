/// Browser platform implementation of DOM APIs for angulardart_seo.
library;

import 'dart:html' as html;

typedef DomDocument = html.HtmlDocument;
typedef DomElement = html.Element;

DomDocument get document => html.document;

/// Additional types needed for SEO services.
typedef Document = html.HtmlDocument;
typedef HTMLHeadElement = html.HeadElement;
typedef HTMLMetaElement = html.MetaElement;
typedef HTMLLinkElement = html.LinkElement;
typedef HTMLScriptElement = html.ScriptElement;

/// Returns the global window object.
html.Window get window => html.window;
