// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async' show Stream, StreamController;
import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_components/utils/browser/dom_service/dom_service.dart'
    show DomService;
import 'package:angulardart_components/utils/disposer/disposer.dart' show Disposer;

const simpleHtmlUriWhitelist = OpaqueToken<List<Uri>>('simpleHtmlUriWhitelist');

const _triggerSelector = 'a.trigger';

abstract class NodeValidator {
  bool allowsElement(web.Element element);
  bool allowsAttribute(
      web.Element element, String attributeName, String value);
}

abstract class UriPolicy {
  bool allowsUri(String rawUri);
}

class NodeValidatorBuilder implements NodeValidator {
  final List<_ElementRule> _allowedElements = [];

  void allowElement(String tagName,
      {List<String>? attributes, UriPolicy? uriPolicy}) {
    _allowedElements.add(_ElementRule(tagName, attributes ?? [], uriPolicy));
  }

  @override
  bool allowsElement(web.Element element) {
    final tagName = element.tagName.toLowerCase();
    return _allowedElements.any((rule) => rule.tagName == tagName);
  }

  @override
  bool allowsAttribute(
      web.Element element, String attributeName, String value) {
    final tagName = element.tagName.toLowerCase();
    final rule = _allowedElements.cast<_ElementRule?>().firstWhere(
        (r) => r!.tagName == tagName,
        orElse: () => null);
    if (rule == null) return false;
    if (!rule.attributes.contains(attributeName)) return false;
    if (attributeName == 'href' && rule.uriPolicy != null) {
      return rule.uriPolicy!.allowsUri(value);
    }
    return true;
  }
}

class _ElementRule {
  final String tagName;
  final List<String> attributes;
  final UriPolicy? uriPolicy;
  _ElementRule(this.tagName, this.attributes, this.uriPolicy);
}

@Component(
  selector: 'simple-html',
  template: '<span></span>',
  styleUrls: ['simple_html.scss.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class SimpleHtmlComponent extends _SimpleHtmlBase {
  final web.Element _element;

  SimpleHtmlComponent(
      super.domService,
      this._element,
      @Optional() @Inject(simpleHtmlUriWhitelist) List<Uri>? domainWhitelist,
      @Attribute('doNotVerifyUrlDestinations') String externalUrisAllowed);

  @override
  web.Element? get targetElement =>
      _element.children.length == 0 ? null : _element.children.item(0) as web.Element;
}

@Component(
  selector: 'simple-html-block',
  template: '<div></div>',
  styleUrls: ['simple_html.scss.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class SimpleHtmlBlockComponent extends _SimpleHtmlBase {
  final web.Element _element;

  SimpleHtmlBlockComponent(
      super.domService,
      this._element,
      @Optional() @Inject(simpleHtmlUriWhitelist) List<Uri>? domainWhitelist,
      @Attribute('doNotVerifyUrlDestinations') String externalUrisAllowed);

  @override
  web.Element? get targetElement =>
      _element.children.length == 0 ? null : _element.children.item(0) as web.Element;
}

abstract class _SimpleHtmlBase implements OnDestroy {
  final DomService _domService;
  web.Element? _cachedTargetElement;
  final _triggerStreamController =
      StreamController<web.UIEvent>.broadcast(sync: true);
  final _subscriptionDisposer = Disposer.multi();
  final List<void Function()> _triggerCleanups = [];

  _SimpleHtmlBase(this._domService);

  web.Element? get targetElement;

  @override
  void ngOnDestroy() {
    _subscriptionDisposer.dispose();
  }

  @Input()
  set contents(String value) => _domService.scheduleWrite(() {
        _cachedTargetElement ??= targetElement;

        _cleanupTriggers();
        _subscriptionDisposer.dispose();

        if (_cachedTargetElement == null) return;

        _cachedTargetElement!.innerHTML = value.toJS;

        _domService.scheduleRead(() {
          final links = _cachedTargetElement!.querySelectorAll(_triggerSelector);
          for (var i = 0; i < links.length; i++) {
            final link = links.item(i)!;
            web.EventListener listener = (web.Event e) {
              _triggerStreamController.add(e as web.UIEvent);
            }.toJS;
            link.addEventListener('click', listener);
            _triggerCleanups.add(() {
              link.removeEventListener('click', listener);
            });
          }
        });
      });

  void _cleanupTriggers() {
    for (var cleanup in _triggerCleanups) {
      cleanup();
    }
    _triggerCleanups.clear();
  }

  @Output()
  Stream<web.UIEvent> get trigger => _triggerStreamController.stream;
}

