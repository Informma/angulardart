/// Platform-agnostic DOM APIs for angulardart_seo.
library;

export 'browser_dom_apis.dart'
    if (dart.library.io) 'native_dom_apis.dart';
