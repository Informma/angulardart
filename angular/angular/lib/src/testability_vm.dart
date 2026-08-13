/// VM-compatible testability stubs.
///
/// Provides no-op implementations of [Testability] and [TestabilityRegistry]
/// for native/AOT builds (server-side rendering) where `dart:js_interop`
/// and `package:web` are not available.
library;

import 'dart:async';

import 'package:meta/meta.dart';
import 'package:angulardart/src/core/zone/ng_zone.dart';

/// Provides testing hooks also accessible via JavaScript APIs in the browser.
///
/// On native/AOT builds (server-side rendering), this is a no-op since
/// testability hooks are not needed for server rendering.
@sealed
class Testability {
  final NgZone _ngZone;

  Testability(this._ngZone);

  List<void Function(bool didAsyncWork)>? _callWhenStable;

  /// Registers [callback] to be invoked when change detection is completed.
  ///
  /// On native/AOT builds, this is a no-op.
  void whenStable(void Function(bool didAsyncWork) callback) {
    // No-op on VM - SSR doesn't need testability hooks
    _storeCallback(callback);
    _runCallbacksIfStable(false);
  }

  void _storeCallback(void Function(bool didAsyncWork) callback) {
    final callWhenStable = _callWhenStable;
    if (callWhenStable == null) {
      _watchForStability(callback);
    } else {
      callWhenStable.add(callback);
    }
  }

  void _watchForStability(void Function(bool didAsyncWork) callback) {
    _callWhenStable = [callback];
    _ngZone.runOutsideAngular(() {
      _ngZone.onTurnDone.listen((_) {
        scheduleMicrotask(() => _runCallbacksIfStable(true));
      });
    });
  }

  /// Whether the framework is no longer anticipating change detection.
  bool get isStable => !_ngZone.isRunning && !_ngZone.hasPendingMacrotasks;

  void _runCallbacksIfStable(bool didWork) {
    if (!isStable) {
      // Wait until this function is called again (it will be).
    } else {
      // Schedule the callback in a new microtask so this never is synchronous.
      scheduleMicrotask(() => _runCallbacks(didWork));
    }
  }

  void _runCallbacks(bool didWork) {
    final callbacks = _callWhenStable!;
    while (callbacks.isNotEmpty) {
      callbacks.removeLast()(didWork);
    }
  }
}

/// A global registry of [Testability] instances given an app root element.
///
/// On native/AOT builds, this uses identity-based tracking with [Object?] keys
/// instead of DOM elements since there's no browser DOM available.
class TestabilityRegistry {
  final _appRoots = <Object?, Testability>{};

  /// Used to eagerly initialize the JS-interop bits before the app is ready.
  ///
  /// On native/AOT builds, this is a no-op since there's no JavaScript context.
  void initializeEagerly() {
    // No-op on VM - no JavaScript window object
  }

  /// Associate [appRoot] with the provided [testability] instance.
  ///
  /// On native/AOT builds, uses identity-based tracking.
  void registerApplication(Object? appRoot, Testability testability) {
    initializeEagerly();
    _appRoots[appRoot] = testability;
  }

  /// Returns the registered testability instance for [appRoot], or `null`.
  Testability? testabilityFor(Object? appRoot) => _appRoots[appRoot];

  /// Returns all testability instances registered.
  Iterable<Testability> get allTestabilities => _appRoots.values;

  /// Walks the DOM [tree] looking for a registered [Testability] instance.
  ///
  /// On native/AOT builds, always returns `null` since there's no DOM tree.
  Testability? findTestabilityInTree(Object? tree) {
    // No-op on VM - no DOM traversal available
    return null;
  }
}
