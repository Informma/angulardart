/// VM implementation for reading the `index.html` shell on the server.
///
/// Uses `dart:io` to read the built `index.html` from disk so the SSR output
/// preserves the app shell (`<head>` links, scripts, root element, etc.).
library;

import 'dart:io';

/// Reads the HTML document at [path] from disk, or returns `null`.
String? readIndexHtmlFile(String path) {
  final file = File(path);
  if (!file.existsSync()) {
    return null;
  }
  return file.readAsStringSync();
}
