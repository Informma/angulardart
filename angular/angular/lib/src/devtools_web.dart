library angular.src.devtools;

// TODO: Re-enable devtools JS interop when dart:js_interop types are compatible
// import 'dart:js_interop';
// import 'dart:js_interop_unsafe';

import 'devtools/inspector.dart';
import 'runtime/dom_apis.dart';
import 'utilities.dart';

export 'devtools/inspector.dart';
export 'devtools/model.dart';

/// Whether developer tools are enabled.
///
/// This is always false in release mode.
bool get isDevToolsEnabled => isDevMode && _isDevToolsEnabled;
bool _isDevToolsEnabled = false;

/// Enables developer tools if in development mode.
///
/// Calling this method in release mode has no effect.
///
/// {@category DevTools}
void enableDevTools() {
  // Devtools JS interop is disabled for now to allow AOT compilation
  // The devtools functionality requires dart:js_interop compatible types
  // which are not available with our abstract DomHTMLElement type.
  // if (isDevMode) {
  //   final inspector = Inspector.instance;
  //   globalContext.setProperty(
  //     'getAngularComponentElement'.toJS,
  //     ((int id) => inspector.getComponentElement(id)).toJS,
  //   );
  //   globalContext.setProperty(
  //     'getAngularComponentIdForNode'.toJS,
  //     ((dynamic node, String groupName) => inspector.getComponentIdForNode(node as dynamic, groupName)).toJS,
  //   );
  // }
}

/// Registers [element] as an additional location to search for components.
///
/// This method should be used to register elements that are not contained by
/// the app's root component.
void registerContentRoot(DomElement element) {
  if (isDevToolsEnabled) {
    Inspector.instance.registerContentRoot(element);
  }
}
