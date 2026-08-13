/// Platform-agnostic DOM APIs for angulardart_server.
///
/// Provides abstracted access to browser DOM APIs using [package:web] on web platforms.
/// On native/AOT platforms (server-side rendering), stub implementations are used.
library;

export 'browser_dom_apis.dart'
    if (dart.library.io) 'native_dom_apis.dart';
