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
  static JSObject? _getAngularTestability(web.Element element) {
    final registry = (_self.getProperty('ngTestabilityRegistries'.toJS).dartify() as List).cast<Object?>();
    for (var i = 0; i < registry.length; i++) {
      final elem = registry[i];
      if (elem != null && elem is JSObject) {
        final rawResult = elem.callMethod(
          'getAngularTestability'.toJS,
          element as JSAny?,
        );
        if (rawResult != null) {
          return _getNonNullOrFail(rawResult, '_getAngularTestability');
        }
      }
    }
    throw StateError('Could not find testability for element.');
  }

  /// Sets `self.getAngularTestability` => [_getAngularTestability].
  static void _export$getAngularTestability() {
    _self.setProperty(
      'getAngularTestability'.toJS,
      _getAngularTestability.toJS,
    );
  }

  /// For every registered [TestabilityRegistry], returns the JS API for it.
  static List<JSObject> _getAllAngularTestabilities() {
    final registry = (_self.getProperty('ngTestabilityRegistries'.toJS).dartify() as List).cast<Object?>();
    final result = <dynamic>[];
    for (var i = 0; i < registry.length; i++) {
      final elem = registry[i];
      if (elem != null && elem is JSObject) {
        final rawTestabilities = _getNonNullOrFail(
          elem.callMethod('getAllAngularTestabilities'.toJS),
          '_getAllAngularTestabilities',
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

  /// Sets `self.getAllAngularTestabilities` => [_getAllAngularTestabilities].
  static void _export$getAllAngularTestabilities() {
    _self.setProperty(
      'getAllAngularTestabilities'.toJS,
      _getAllAngularTestabilities.toJS,
    );
  }

  /// For every testability, calls [callback] when they _all_ report stable.
  static void _whenAllStable(void Function(bool didWork) callback) {
    final testabilities = _getAllAngularTestabilities();

    var pendingStable = testabilities.length;
    var anyDidWork = false;

    void decrement(bool didWork) {
      if (didWork) {
        anyDidWork = didWork;
      }
      pendingStable--;
      if (pendingStable == 0) {
        callback(anyDidWork);
      }
    }

    for (var testability in testabilities) {
      testability.callMethod(
        'whenStable'.toJS,
        decrement.toJS,
      );
    }
  }

  /// Adds [_whenAllStable] to `self.frameworkStabilizers`.
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
    frameworkStabilizers.add(_whenAllStable.toJS);
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

    JSObject? getAngularTestability(web.Element element) {
      final dartTestability = registry.findTestabilityInTree(element);
      return dartTestability?.asJsApi();
    }

    object.setProperty(
      'getAngularTestability'.toJS,
      getAngularTestability.toJS,
    );

    List<JSObject> getAllAngularTestabilities() {
      return registry.allTestabilities.map((t) => t.asJsApi()).toList(growable: false);
    }

    object.setProperty(
      'getAllAngularTestabilities'.toJS,
      getAllAngularTestabilities.toJS,
    );

    return object;
  }
}

extension on Testability {
  JSObject asJsApi() {
    return createJsTestability(
      isStable: (() => isStable).toJS,
      whenStable: whenStable.toJS,
    );
  }
}
