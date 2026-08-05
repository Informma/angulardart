// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:web/web.dart' as web;

class DomTreeIterator implements Iterator<web.Element> {
  final bool _reverse;
  final bool _wraps;
  final web.Element _startingElement;
  final web.Element? _scope;
  web.Element? _element;

  DomTreeIterator(web.Element element,
      {bool reverse = false, web.Element? scope, bool wraps = false})
      : _element = element,
        _startingElement = element,
        _reverse = reverse,
        _scope = scope,
        _wraps = wraps {
    if (_wraps && _scope == null) {
      throw Exception('global wrapping is disallowed, scope is required');
    }
    if (_scope != null && !_scope.contains(_element!)) {
      throw Exception('if scope is set, '
          'starting element should be inside of scope');
    }
  }

  DomTreeIterator reversed({bool? wraps}) {
    return DomTreeIterator(_element!,
        reverse: !_reverse, scope: _scope, wraps: wraps ?? _wraps);
  }

  @override
  web.Element get current => _element!;

  @override
  bool moveNext() {
    if (_element == null) {
      return false;
    }

    if (_element == _scope && _childrenCount(_element!) == 0) {
      _element = null;
      return false;
    }

    if (_reverse) {
      _navigateBackward();
    } else {
      _navigateForward();
    }

    if (_element == _startingElement) {
      _element = null;
    }

    return (_element != null);
  }

  void _navigateBackward() {
    if (_element == _scope) {
      if (_wraps) {
        _element = lastDescendant(_scope!);
      } else {
        _element = null;
      }
    } else if (_parentElement(_element!) == null) {
      _element = null;
    } else if (_element == _firstChild(_parentElement(_element!)!)) {
      _element = _parentElement(_element!);
    } else {
      _element = _element!.previousElementSibling;
      while (_childrenCount(_element!) > 0) {
        _element = _lastChild(_element!);
      }
    }
  }

  void _navigateForward() {
    if (_childrenCount(_element!) > 0) {
      _element = _firstChild(_element!);
    } else {
      while (_parentElement(_element!) != null &&
          _parentElement(_element!) != _scope &&
          _element == _lastChild(_parentElement(_element!)!)) {
        _element = _parentElement(_element!);
      }
      if (_parentElement(_element!) == null ||
          (_parentElement(_element!) == _scope &&
              _element == _lastChild(_parentElement(_element!)!))) {
        if (_wraps) {
          _element = _scope;
        } else {
          _element = null;
        }
      } else {
        _element = _element!.nextElementSibling;
      }
    }
  }
}

web.Element lastDescendant(web.Element scope) {
  web.Element current = scope;
  while (_childrenCount(current) > 0) {
    current = _lastChild(current);
  }
  return current;
}

web.Element? _parentElement(web.Element element) =>
    element.parentNode != null && element.parentNode!.isA<web.Element>()
        ? element.parentNode as web.Element
        : null;

int _childrenCount(web.Element element) => element.children.length;

web.Element _firstChild(web.Element element) =>
    element.children.item(0) as web.Element;

web.Element _lastChild(web.Element element) {
  var children = element.children;
  return children.item(children.length - 1) as web.Element;
}
