// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:math';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/src/laminate/ruler/ruler_interface.dart';
import 'package:angulardart_components/utils/browser/dom_service/dom_service.dart';

/// Measures and tracks size changes for HTML elements in Dart web applications.
@Injectable()
abstract class DomRuler implements Ruler<web.Element> {
  factory DomRuler(web.Document document, DomService domService) = DomRulerImpl;
}

/// Actual implementation.
@Injectable()
class DomRulerImpl extends RulerBase<web.Element> implements DomRuler {
  final web.Document _document;
  final DomService _domService;

  DomRulerImpl(this._document, this._domService);

  @override
  bool canSyncWrite(web.Element element) {
    return !(_document.body?.contains(element) ?? false);
  }

  @override
  Stream<DomService> get onLayoutChanged => _domService.onLayoutChanged;

  @override
  Future<void> onRead() => _domService.onRead();

  @override
  Future<void> onWrite() => _domService.onWrite();

  @override
  Future<Rectangle<num>> measure(web.Element element, {bool offset = false}) {
    if (canSyncWrite(element)) {
      return Future<Rectangle<num>>.value(Rectangle<num>(0, 0, 0, 0));
    }
    return super.measure(element, offset: offset);
  }

  @override
  Rectangle<num> measureSync(web.Element element, {bool offset = false}) {
    if (offset) {
      final htmlElement = element as web.HTMLElement;
      return Rectangle<num>(
          htmlElement.offsetLeft, htmlElement.offsetTop,
          htmlElement.offsetWidth, htmlElement.offsetHeight);
    }
    final rect = element.getBoundingClientRect();
    return Rectangle<num>(rect.left, rect.top, rect.width, rect.height);
  }

  @override
  Stream<Rectangle<num>> track(web.Element element) {
    if (canSyncWrite(element)) {
      return Stream<Rectangle<num>>.fromIterable([Rectangle<num>(0, 0, 0, 0)]);
    }
    return super.track(element);
  }

  @override
  void removeCssClassesSync(web.Element element, List<String> classes) {
    for (var c in classes.where((c) => c.isNotEmpty)) {
      element.classList.remove(c);
    }
  }

  @override
  void addCssClassesSync(web.Element element, List<String> classes) {
    for (var c in classes.where((c) => c.isNotEmpty)) {
      element.classList.add(c);
    }
  }

  @override
  void clearCssPropertiesSync(web.Element element) {
    (element as web.HTMLElement).style.cssText = '';
  }

  @override
  void setCssPropertySync(
      web.Element element, String propertyName, String propertyValue) {
    (element as web.HTMLElement).style.setProperty(propertyName, propertyValue);
  }
}
