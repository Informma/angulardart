/// Platform-agnostic DOM APIs for browser platform.
///
/// Provides real browser DOM implementations on dart2js/dart2wasm,
/// and stub no-op implementations on native/AOT (SSR).
library;

import 'package:web/web.dart' as web;

import 'web_types.dart';

export 'web_types.dart';

/// Returns the global document object from the browser.
/// The returned value satisfies the DomDocument interface via structural typing.
DomDocument get document => web.document as DomDocument;

/// Returns the global window object from the browser.
/// The returned value satisfies the DomWindow interface via structural typing.
DomWindow? get windowOrNull => web.window as DomWindow?;
