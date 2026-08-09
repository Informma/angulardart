library;

import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:web/web.dart' as web;

import 'package:collection/collection.dart';
import 'package:angulardart/angulardart.dart';
// ignore: implementation_imports
import 'package:angulardart/src/utilities.dart';

import '../router/router.dart';
import '../router/router_state.dart';
import 'router_link_directive_browser.dart' show RouterLink;

@Directive(
  selector: '[routerLinkActive]',
)
class RouterLinkActive implements AfterViewInit, OnDestroy {
  final web.Element _element;
  final Router _router;

  late StreamSubscription<RouterState> _routeChanged;
  late List<String> _classes;

  @ContentChildren(RouterLink)
  List<RouterLink>? links;

  RouterLinkActive(this._element, this._router);

  @override
  void ngOnDestroy() => _routeChanged.cancel();

  @override
  void ngAfterViewInit() {
    _routeChanged = _router.stream.listen(_update);
    _update(_router.current);
  }

  @Input()
  set routerLinkActive(Object classes) {
    if (classes is String) {
      _classes = [classes];
    } else if (classes is List<String>) {
      _classes = classes;
    } else if (isDevMode) {
      throw ArgumentError(
        'Expected a string or list of strings. Got $classes.',
      );
    }
  }

  void _update(RouterState? routerState) {
    var isActive = false;
    var links = this.links;
    if (routerState != null && links != null) {
      for (var link in links) {
        final url = link.url;
        if (url.path != routerState.path) continue;
        if (url.queryParameters.isNotEmpty &&
            !const MapEquality<String, String>()
                .equals(url.queryParameters, routerState.queryParameters)) {
          continue;
        }
        if (url.fragment.isNotEmpty && url.fragment != routerState.fragment) {
          continue;
        }
        isActive = true;
        break;
      }
    }
    var classList = (_element as web.HTMLElement).classList;
    for (var cls in _classes) {
      if (isActive) {
        classList.add(cls);
      } else {
        classList.remove(cls);
      }
    }
  }
}
