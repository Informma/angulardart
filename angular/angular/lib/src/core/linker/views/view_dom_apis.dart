/// Browser platform DOM APIs for linker/views.
///
/// Re-exports the unified DOM types from runtime/dom_apis.dart so that
/// ViewNode, ViewElement, etc. are always aliases of DomNode, DomElement, etc.
library;

export '../../../runtime/web_types.dart';
export 'view_dom_apis_browser.dart' if (dart.library.io) 'view_dom_apis_vm.dart';
