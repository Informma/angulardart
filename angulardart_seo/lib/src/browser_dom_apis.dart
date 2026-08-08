/// Browser platform implementation of DOM APIs for angulardart_seo.
library;

import 'package:web/web.dart' as web;

typedef DomDocument = web.Document;
typedef DomElement = web.Element;

DomDocument get document => web.document;

/// Additional types needed for SEO services.
typedef Document = web.Document;
typedef HTMLHeadElement = web.HTMLHeadElement;
typedef HTMLMetaElement = web.HTMLMetaElement;
typedef HTMLLinkElement = web.HTMLLinkElement;
typedef HTMLScriptElement = web.HTMLScriptElement;

/// Returns the global window object.
web.Window get window => web.window;
