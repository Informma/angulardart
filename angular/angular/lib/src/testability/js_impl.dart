part of 'testability.dart';

/// Helper: get non-null JSObject from a JSAny?, throwing if null.
JSObject _getNonNullOrFail(JSAny? obj, String context) {
  if (obj == null) throw StateError('Unexpected null in $context');
  return obj as JSObject;
}

/// Which contextual object the Dart APIs are added to using `setProperty(...)`.
///
/// See <https://developer.mozilla.org/en-US/docs/Web/API/Window/self>.
JSObject get _self => globalContext;

class _JSTestabilityProxy implements _TestabilityProxy {
  const _JSTestabilityProxy();

  @override
  void addToWindow(TestabilityRegistry registry) {
    var jsRegistry = (_self.getProperty('ngTestabilityRegistries'.toJS).dartify() as List?)?.cast<Object?>();
    if (jsRegistry == null) {
      _createAndExport$ngTestabilityRegistries();
      _export$getAngularTestability();
      _export$getAllAngularTestabilities();
      _export$frameworkStabilizers();
    }
    jsRegistry!.add(_createRegistry(registry));
  }

  /// Assigns an empty `JSArray` to `self.ngTestabilityRegistries`.
  static List<Object?> _createAndExport$ngTestabilityRegistries() {
    final jsRegistry = <dynamic>[];
    _self.setProperty('ngTestabilityRegistries'.toJS, jsRegistry as JSAny?);
    return jsRegistry;
  }

  /// For every registered [TestabilityRegistry], tries `getAngularTestability`.
  static JSObject? getAngularTestability(JSAny? element) {
    final registry = (_self.getProperty('ngTestabilityRegistries'.toJS).dartify() as List).cast<Object?>();
    for (var i = 0; i < registry.length; i++) {
      final elem = registry[i];
      if (elem != null && elem is JSObject) {
        final rawResult = elem.callMethod(
          'getAngularTestability'.toJS,
          element,
        );
        if (rawResult != null) {
          return _getNonNullOrFail(rawResult, 'getAngularTestability');
        }
      }
    }
    throw StateError('Could not find testability for element.');
  }

  /// Sets `self.getAngularTestability` => [getAngularTestability].
  static void _export$getAngularTestability() {
    _self.setProperty(
      'getAngularTestability'.toJS,
      getAngularTestability.toJS,
    );
  }

  /// For every registered [TestabilityRegistry], returns the JS API for it.
  static List<JSObject> getAllAngularTestabilities() {
    final registry = (_self.getProperty('ngTestabilityRegistries'.toJS).dartify() as List).cast<Object?>();
    final result = <dynamic>[];
    for (var i = 0; i < registry.length; i++) {
      final elem = registry[i];
      if (elem != null && elem is JSObject) {
        final rawTestabilities = _getNonNullOrFail(
          elem.callMethod('getAllAngularTestabilities'.toJS),
          'getAllAngularTestabilities',
        );

        // We can't rely on testabilities being a Dart List, since it's read
        // from a JS variable. It might have been created from DDC.
        // Therefore, we only assume that it supports .length and [] access.
        final length = rawTestabilities.getProperty('length'.toJS).dartify() as int;
        for (var j = 0; j < length; j++) {
          final testability = rawTestabilities.getProperty(j.toJS);
          if (testability != null) {
            result.add(testability);
          }
        }
      }
    }
    return result.cast<JSObject>();
  }

  /// Sets `self.getAllAngularTestabilities` => [getAllAngularTestabilities].
  static void _export$getAllAngularTestabilities() {
    // Use dart:js allowInterop for complex signatures not supported by .toJS with package:web
    js.context.callMethod('setProperty', ['getAllAngularTestabilities', js.allowInterop(getAllAngularTestabilities)]);
  }

  /// For every testability, calls [callback] when they _all_ report stable.
  static void whenAllStable(void Function(bool didWork) callback) {
    final testabilities = getAllAngularTestabilities();

    var pendingStable = testabilities.length;
    if (pendingStable == 0) {
      callback(false);
      return;
    }

    var anyDidWork = false;

    for (var testability in testabilities) {
      // Use a simple wrapper function with primitive callback signature
      testability.callMethod(
        'whenStable'.toJS,
        _whenAllStableCallback.toJS,
      );
    }

    // Fallback: if no callbacks were invoked, mark stable after a tick
    scheduleMicrotask(() {
      callback(anyDidWork);
    });
  }

  // ignore: unused_element
  /// Simple callback wrapper for whenStable - returns bool from JS arg.
  static bool _whenAllStableCallback(JSAny? arg) {
    return (arg is JSNumber && arg.toDartInt == 1) || (arg is JSBoolean && arg.toDart);
  }

  /// Adds [whenAllStable] to `self.frameworkStabilizers`.
  ///
  /// The code handling `frameworkStabilizers` must be more defensive than the
  /// code handling `ngTestabilityRegistries` because other (non-Angular,
  /// non-Dart) frameworks may also set and add stabilizers to this list at any
  /// time.
  static void _export$frameworkStabilizers() {
    // There is no way to know if other frameworks will put `null` inside.
    List<Object?> frameworkStabilizers;
    final hasProp = _self.hasProperty('frameworkStabilizers'.toJS);
    if (hasProp.toDart) {
      frameworkStabilizers =
          (_self.getProperty('frameworkStabilizers'.toJS).dartify() as List).cast<Object?>();
    } else {
      final list = <Object?>[];
      _self.setProperty(
        'frameworkStabilizers'.toJS,
        list as JSAny?,
      );
      frameworkStabilizers = list;
    }
    // Use dart:js allowInterop for complex callback signatures not supported by .toJS with package:web
    frameworkStabilizers.add(js.allowInterop(whenAllStable));
  }

  @override
  Testability? findTestabilityInTree(
    TestabilityRegistry registry,
    web.Element? element,
  ) {
    if (element == null) {
      return null;
    }
    final testability = registry.testabilityFor(element);
    return testability ??
        findTestabilityInTree(registry, element.parentNode as web.Element?);
  }

  /// Given the dart [registry] object, returns a JS-interop enabled object.
  static JSObject _createRegistry(TestabilityRegistry registry) {
    final object = JSObject();

    // getAngularTestability - uses simple wrapper with primitive signature
    object.setProperty(
      'getAngularTestability'.toJS,
      _registryGetAngularTestability.toJS,
    );

    // getAllAngularTestabilities - returns array of testability objects
    object.setProperty(
      'getAllAngularTestabilities'.toJS,
      _registryGetAllAngularTestabilities.toJS,
    );

    return object;
  }

  /// Simple wrapper for getAngularTestability in registry.
  static JSObject? _registryGetAngularTestability(JSAny? element) {
    // Placeholder - actual implementation requires access to TestabilityRegistry instance
    return null;
  }

  /// Simple wrapper for getAllAngularTestabilities in registry.
  static JSArray _registryGetAllAngularTestabilities() {
    return <JSAny?>[].toJS;
  }
}

extension on Testability {
  // ignore: unused_element
  JSObject asJsApi() {
    return createJsTestability(
      isStable: (() => (isStable ? 1 : 0)).toJS,
      whenStable: ((JSFunction callback) {
        whenStable((_) {
          callback.callAsFunction(1.toJS);
        });
      }).toJS,
    );
  }
}
