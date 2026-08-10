/// JS interop helpers for testability module.
library;

import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:angulardart/src/testability/testability_browser.dart';
import 'package:angulardart/src/runtime/web_types.dart';

/// Proxy interface for JS testability operations.
abstract class TestabilityProxy {
  void addToWindow(TestabilityRegistry registry);
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
    jsRegistry.callMethod('push'.toJS, _createRegistry(registry));
  }

  static JSArray<JSAny?>? _getNgTestabilityRegistries() {
    final val = globalContext.getProperty('ngTestabilityRegistries'.toJS);
    if (val == null || val.isUndefined) return null;
    return val as JSArray<JSAny?>;
  }

  static void _createAndExportNgTestabilityRegistries() {
    globalContext.setProperty(
      'ngTestabilityRegistries'.toJS,
      <JSAny>[].toJS,
    );
  }

  /// For every registered [TestabilityRegistry], tries `getAngularTestability`.
  static JSAny? getAngularTestability(JSAny? element) {
    final registry = _getNgTestabilityRegistries();
    if (registry == null) {
      throw StateError('Could not find testability for element.');
    }
    for (var i = 0; i < registry.length; i++) {
      final entry = registry[i];
      if (entry != null) {
        try {
          final rawResult =
              (entry as JSObject).callMethod<JSAny?>(
                  'getAngularTestability'.toJS, element);
          if (!rawResult.isUndefined) {
            return rawResult;
          }
        } catch (_) {}
      }
    }
    throw StateError('Could not find testability for element.');
  }

  /// Sets `self.getAngularTestability` => [getAngularTestability].
  static void _exportGetAngularTestability() {
    globalContext.setProperty(
      'getAngularTestability'.toJS,
      getAngularTestability.toJS,
    );
  }

  /// For every registered [TestabilityRegistry], returns the JS API for it.
  static List<JSAny?> getAllAngularTestabilities() {
    final registry = _getNgTestabilityRegistries();
    if (registry == null) return <JSAny?>[];
    final result = <JSAny?>[];
    for (var i = 0; i < registry.length; i++) {
      final entry = registry[i];
      if (entry != null) {
        try {
          final rawTestabilities =
              (entry as JSObject).callMethod<JSArray<JSAny?>>(
                  'getAllAngularTestabilities'.toJS);
          for (var j = 0; j < rawTestabilities.length; j++) {
            final testability = rawTestabilities[j];
            if (testability != null) {
              result.add(testability);
            }
          }
        } catch (_) {}
      }
    }
    return result;
  }

  /// Sets `self.getAllAngularTestabilities` => [getAllAngularTestabilities].
  static void _exportGetAllAngularTestabilities() {
    globalContext.setProperty(
      'getAllAngularTestabilities'.toJS,
      (() => getAllAngularTestabilities().toJS).toJS,
    );
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

    for (final testability in testabilities) {
      if (testability != null) {
        try {
          (testability as JSObject).callMethod<JSAny?>(
            'whenStable'.toJS,
            ((JSBoolean didWork) {
              callbacksInvoked++;
              if (callbacksInvoked >= pendingStable) {
                scheduleMicrotask(() => callback(false));
              }
            }).toJS,
          );
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
    JSArray<JSAny?> frameworkStabilizers;
    final val = globalContext.getProperty('frameworkStabilizers'.toJS);
    if (val == null || val.isUndefined) {
      frameworkStabilizers = <JSAny>[].toJS;
      globalContext.setProperty(
        'frameworkStabilizers'.toJS,
        frameworkStabilizers,
      );
    } else {
      frameworkStabilizers = val as JSArray<JSAny?>;
    }
    frameworkStabilizers.callMethod(
      'push'.toJS,
      ((JSAny? _) => whenAllStable((_) {})).toJS,
    );
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
  static JSObject _createRegistry(TestabilityRegistry registry) {
    final obj = JSObject();
    obj.setProperty(
      'getAngularTestability'.toJS,
      ((JSAny? element) => null as JSAny?).toJS,
    );
    obj.setProperty(
      'getAllAngularTestabilities'.toJS,
      (() => <JSAny>[].toJS).toJS,
    );
    return obj;
  }
}
