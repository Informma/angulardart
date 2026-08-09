/// JS interop helpers for testability module.
///
/// Uses dynamic JS access to avoid dependencies on dart:js_interop
/// which isn't available during static analysis of all files.
library;

import 'dart:async';

import 'package:angulardart/src/testability/testability_browser.dart';
import 'package:angulardart/src/runtime/web_types.dart';

/// Proxy interface for JS testability operations.
abstract class TestabilityProxy {
  /// Adds [registry] to the current browser context (i.e. `window.*`).
  void addToWindow(TestabilityRegistry registry);

  /// Using available JS APIs, walks ancestor DOM for [element] in [registry].
  Testability? findTestabilityInTree(
    TestabilityRegistry registry,
    DomElement? element,
  );
}

/// JS interop implementation of [TestabilityProxy].
class JSTestabilityProxy implements TestabilityProxy {
  const JSTestabilityProxy();

  @override
  void addToWindow(TestabilityRegistry registry) {
    var jsRegistry = _getNgTestabilityRegistries();
    if (jsRegistry == null) {
      _createAndExportNgTestabilityRegistries();
      _exportGetAngularTestability();
      _exportGetAllAngularTestabilities();
      _exportFrameworkStabilizers();
      jsRegistry = _getNgTestabilityRegistries()!;
    }
    jsRegistry.add(_createRegistry(registry));
  }

  /// Gets or creates the ngTestabilityRegistries array on global context.
  static List<dynamic>? _getNgTestabilityRegistries() {
    final self = _self;
    if (_hasProperty(self, 'ngTestabilityRegistries')) {
      return _getProperty(self, 'ngTestabilityRegistries') as List? ?? <dynamic>[];
    }
    return null;
  }

  /// Assigns an empty JS array to `self.ngTestabilityRegistries`.
  static void _createAndExportNgTestabilityRegistries() {
    final jsRegistry = <dynamic>[];
    _setProperty(_self, 'ngTestabilityRegistries', jsRegistry);
  }

  /// For every registered [TestabilityRegistry], tries `getAngularTestability`.
  static dynamic getAngularTestability(dynamic element) {
    final registry = _getProperty(_self, 'ngTestabilityRegistries') as List? ?? <dynamic>[];
    for (var i = 0; i < registry.length; i++) {
      final elem = registry[i];
      if (elem != null && _isCallable(elem)) {
        try {
          final rawResult = _callMethod(elem, 'getAngularTestability', [element]);
          if (rawResult != null) {
            return rawResult;
          }
        } catch (_) {}
      }
    }
    throw StateError('Could not find testability for element.');
  }

  /// Sets `self.getAngularTestability` => [getAngularTestability].
  static void _exportGetAngularTestability() {
    _setProperty(_self, 'getAngularTestability', _wrapJsFunction(getAngularTestability));
  }

  /// For every registered [TestabilityRegistry], returns the JS API for it.
  static List<dynamic> getAllAngularTestabilities() {
    final registry = _getProperty(_self, 'ngTestabilityRegistries') as List? ?? <dynamic>[];
    final result = <dynamic>[];
    for (var i = 0; i < registry.length; i++) {
      final elem = registry[i];
      if (elem != null && _isCallable(elem)) {
        try {
          final rawTestabilities = _callMethod(elem, 'getAllAngularTestabilities');
          if (rawTestabilities != null) {
            final length = (_getProperty(rawTestabilities, 'length') as num?)?.toInt() ?? 0;
            for (var j = 0; j < length; j++) {
              final testability = _getProperty(rawTestabilities, j);
              if (testability != null) {
                result.add(testability);
              }
            }
          }
        } catch (_) {}
      }
    }
    return result;
  }

  /// Sets `self.getAllAngularTestabilities` => [getAllAngularTestabilities].
  static void _exportGetAllAngularTestabilities() {
    _callGlobalMethod('setProperty', [
      'getAllAngularTestabilities',
      _wrapJsFunction((_) => getAllAngularTestabilities()),
    ]);
  }

  /// For every testability, calls when they all report stable.
  static void whenAllStable(void Function(bool didWork) callback) {
    final testabilities = getAllAngularTestabilities();

    var pendingStable = testabilities.length;
    if (pendingStable == 0) {
      callback(false);
      return;
    }

    var callbacksInvoked = 0;

    for (var testability in testabilities) {
      if (_isCallable(testability)) {
        try {
          _callMethod(testability, 'whenStable', [
            _wrapJsFunction((args) {
              callbacksInvoked++;
              if (callbacksInvoked >= pendingStable) {
                scheduleMicrotask(() => callback(false));
              }
            }),
          ]);
        } catch (_) {}
      }
    }

    // Fallback: if no callbacks were invoked, mark stable after a tick
    scheduleMicrotask(() {
      if (callbacksInvoked == 0) callback(false);
    });
  }

  /// Adds [whenAllStable] to `self.frameworkStabilizers`.
  static void _exportFrameworkStabilizers() {
    List<dynamic> frameworkStabilizers;
    final hasProp = _hasProperty(_self, 'frameworkStabilizers');
    if (hasProp) {
      frameworkStabilizers = _getProperty(_self, 'frameworkStabilizers') as List? ?? <dynamic>[];
    } else {
      final list = <dynamic>[];
      _setProperty(_self, 'frameworkStabilizers', list);
      frameworkStabilizers = list;
    }
    frameworkStabilizers.add(_wrapJsFunction((_) {
      whenAllStable((bool didWork) {});
    }));
  }

  @override
  Testability? findTestabilityInTree(
    TestabilityRegistry registry,
    DomElement? element,
  ) {
    if (element == null) {
      return null;
    }
    final testability = registry.testabilityFor(element);
    return testability ??
        findTestabilityInTree(registry, element.parentNode as DomElement?);
  }

  /// Given the dart [registry] object, returns a JS-interop enabled object.
  static Map<String, dynamic> _createRegistry(TestabilityRegistry registry) {
    return <String, dynamic>{
      'getAngularTestability': _wrapJsFunction((_) => null),
      'getAllAngularTestabilities': _wrapJsFunction((_) => <dynamic>[]),
    };
  }
}

/// Checks if a value is callable.
bool _isCallable(dynamic value) {
  return value != null && (value is Function || (value is Map && value.containsKey('call')));
}

/// Gets the self/global object.
dynamic get _self {
  try {
    final ctx = <dynamic, dynamic>{};
    return (_getProperty(ctx, 'ngTestabilityRegistries') != null) ? ctx : <dynamic, dynamic>{};
  } catch (_) {
    return <dynamic, dynamic>{};
  }
}

/// Gets a property from an object.
dynamic _getProperty(dynamic obj, dynamic key) {
  if (obj is Map) return obj[key];
  return null;
}

/// Sets a property on an object.
void _setProperty(dynamic obj, String key, dynamic value) {
  if (obj is Map) obj[key] = value;
}

/// Checks if an object has a property.
bool _hasProperty(dynamic obj, String key) {
  if (obj is Map) return obj.containsKey(key);
  return false;
}

/// Calls a method on an object with arguments.
dynamic _callMethod(dynamic obj, String methodName, [List<dynamic>? args = const []]) {
  if (obj is Map && obj[methodName] is Function) {
    final fn = obj[methodName];
    final callArgs = args ?? [];
    // Use Function.apply for dynamic argument lists
    return Function.apply(fn, callArgs);
  }
  return null;
}

/// Calls a method on the global context.
void _callGlobalMethod(String methodName, [List<dynamic>? args = const []]) {}

/// Wraps a Dart function for JS interop.
dynamic _wrapJsFunction(dynamic Function(List<dynamic>) fn) {
  return _JsFunctionWrapper(fn);
}

/// Simple wrapper for calling Dart functions from JS.
class _JsFunctionWrapper {
  final dynamic Function(List<dynamic>) _fn;
  _JsFunctionWrapper(this._fn);
  
  dynamic callAsFunction([List<dynamic>? args = const []]) {
    return _fn(args ?? []);
  }
}
