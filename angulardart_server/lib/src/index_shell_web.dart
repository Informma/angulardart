/// Web stub for reading the `index.html` shell on the server.
///
/// On the browser there is no SSR server and no filesystem, so this returns
/// `null` (the caller falls back to a minimal HTML shell).
library;

/// Reads the HTML document at [path] from disk, or returns `null`.
String? readIndexHtmlFile(String path) => null;
