/// Platform-agnostic DOM APIs for NgStyle directive.
library;

export 'ng_style_dom_apis_browser.dart' if (dart.library.io) 'ng_style_dom_apis_vm.dart';
