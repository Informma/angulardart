/// Browser platform DOM APIs for NgClass directive.
library;

// Platform-specific exports - each file provides its own DomElement type
// to avoid conflicts during static analysis across platforms.
export 'ng_class_dom_apis_browser.dart' if (dart.library.io) 'ng_class_dom_apis_vm.dart';
