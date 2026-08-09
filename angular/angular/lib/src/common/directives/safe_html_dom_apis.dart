/// Platform-agnostic DOM APIs for SafeHtmlDirective.
library;

export 'safe_html_dom_apis_browser.dart' if (dart.library.io) 'safe_html_dom_apis_vm.dart';
