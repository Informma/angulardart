/// Browser platform implementation of DOM APIs for angulardart_seo.
library;

import 'dart:html' as html;

typedef Document = html.HtmlDocument;
typedef Element = html.Element;
typedef HTMLHeadElement = html.HeadElement;
typedef HTMLMetaElement = html.MetaElement;
typedef HTMLLinkElement = html.LinkElement;
typedef HTMLScriptElement = html.ScriptElement;

Document get document => html.document;
