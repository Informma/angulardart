/// VM platform HTML sanitizer stub.
///
/// On native/AOT builds (server-side rendering), this is a no-op since
/// HTML sanitization is not needed on the server.
library;

/// Sanitizes the given unsafe, untrusted HTML fragment.
/// On VM, returns the input as-is since sanitization is handled client-side.
String? sanitizeHtmlInternal(String? value) => value;
