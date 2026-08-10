// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

/// Function provided by a framework to register an [IsStableCallback] that is
/// invoked by the framework when it reaches a stable state.
typedef FrameworkStabilizer = void Function(IsStableCallback callback);

/// Function invoked by a framework when it has reached a stable state. The
/// `didWork` parameter indicates, if the framework did any work between
/// callback registration and callback invocation.
typedef IsStableCallback = void Function(bool didWork, String name);

// frameworkStabilizers is a property of the window object.
JSArray _getFrameworkStabilizers() {
  final val = globalContext.getProperty('frameworkStabilizers'.toJS);
  if (val == null || val.isUndefined) {
    final arr = <JSAny>[].toJS;
    globalContext.setProperty('frameworkStabilizers'.toJS, arr);
    return arr;
  }
  return val as JSArray;
}

/// Provides a set of helper functions for frameworks to register and deregister
/// stabilizing functions. These functions will be called by tests, whenever
/// they require the page to be stable before they can perform the next action.
class FrameworkStabilizers {
  static final Map<int, JSFunction> _idToFrameworkStabilizer = {};
  static int _nextId = 0;

  /// Add a stabilize function for a framework.
  ///
  /// This function will be called
  /// whenever a test needs to wait for the framework to stabilize. When the
  /// framework is stable, it needs to call the [IsStableCallback] provided
  /// as an argument to the [FrameworkStabilizer].
  /// Rules for calling the callback by the framework:
  ///   - If a framework is already stable at the time of callback
  ///     registration, the callback should be called in the next event loop
  ///     iteration with the `didWork` parameter set to false.
  ///   - Otherwise, the callback should be called as soon as the framework is
  ///     stable with `didWork` set to true.
  ///   - A registered callback should never be called more than once.
  ///
  /// The id returned by [add] can be used to remove the [FrameworkStabilizer]
  /// with [remove].
  static int add(FrameworkStabilizer fn) {
    var jsFn = fn.toJS;
    var id = _nextId++;
    _idToFrameworkStabilizer[id] = jsFn;
    _getFrameworkStabilizers().callMethod('push'.toJS, jsFn);
    return id;
  }

  /// Removes the [FrameworkStabilizer] identified by [id].
  static bool remove(int id) {
    var jsFn = _idToFrameworkStabilizer.remove(id);
    if (jsFn == null) return false;
    final arr = _getFrameworkStabilizers();
    for (var i = 0; i < arr.length; i++) {
      if (arr[i] == jsFn) {
        arr.callMethod('splice'.toJS, i.toJS, 1.toJS);
        return true;
      }
    }
    return false;
  }

  static void removeAll() {
    _idToFrameworkStabilizer.clear();
    globalContext.setProperty('frameworkStabilizers'.toJS, <JSAny>[].toJS);
  }
}
