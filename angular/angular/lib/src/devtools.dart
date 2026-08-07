library angular.src.devtools;

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:web/web.dart' as web;

import 'devtools/inspector.dart';
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
  if (isDevMode) {
    _isDevToolsEnabled = true;
    globalContext.setProperty(
      'getAngularComponentElement'.toJS,
      Inspector.instance.getComponentElement.toJS,
    );
    globalContext.setProperty(
      'getAngularComponentIdForNode'.toJS,
      Inspector.instance.getComponentIdForNode.toJS,
    );
  }
}

/// Registers [element] as an additional location to search for components.
///
/// This method should be used to register elements that are not contained by
/// the app's root component.
void registerContentRoot(web.Element element) {
  if (isDevToolsEnabled) {
    Inspector.instance.registerContentRoot(element);
  }
}
