/// Platform-independent router event type for AngularDart Router.
///
/// On the browser this is an alias for `dart:html`'s [html.Event]; on native/VM
/// (server-side rendering) it is a no-op stub. This keeps the router
/// platform-agnostic while using `dart:html` directly on the browser.
library;

export 'router_types_browser.dart' if (dart.library.io) 'router_types_vm.dart';
