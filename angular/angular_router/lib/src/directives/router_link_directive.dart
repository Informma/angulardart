import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';

import '../location.dart' show Location;
import '../router/navigation_params.dart';
import '../router/router.dart';
import '../url.dart';

/// Creates a listener on the target element that routes to a specified link.
///
/// ```html
/// <a routerLink="/heroes">Heroes</a>
/// ```
/// Can also be used with [RouterPath].
/// ```html
/// <a [routerLink]="heroPath.toUrl()">Heroes</a>
/// ```
///
/// The [routerLink] can contain queryParameters or a fragment, ie: /heroes?a=1.
@Directive(
  selector: '[routerLink]',
)
class RouterLink implements OnDestroy {
  final Router _router;
  final Location _location;
  final String? _target;

  web.Element? _element;
  JSFunction? _keyPressHandler;
  late String _routerLink;
  String? _cachedVisibleHref;
  Url? _cachedUrl;

  RouterLink(
    this._router,
    this._location,
    @Attribute('target') this._target,
    web.Element element,
  ) {
    if (element.tagName != 'A') {
      _element = element;
      _keyPressHandler = ((web.Event e) => _onKeyPress(e as web.KeyboardEvent)).toJS;
      element.addEventListener('keypress', _keyPressHandler!);
    }
  }

  @Input()
  set routerLink(dynamic routerLink) {
    if (routerLink is String) {
      _routerLink = routerLink;
    } else if (routerLink is List) {
      // Convert list to path string
      _routerLink = routerLink.map((e) => e.toString()).join('/');
    } else {
      throw ArgumentError('routerLink must be a String or List, got ${routerLink.runtimeType}');
    }
    _cachedVisibleHref = null;
    _cachedUrl = null;
  }

  Url get url {
    if (_cachedUrl == null) {
      final parsedUrl = Url.parse(_routerLink);
      _cachedUrl = Url(
        _location.normalizePath(parsedUrl.path),
        fragment: parsedUrl.fragment,
        queryParameters: parsedUrl.queryParameters,
      );
    }
    return _cachedUrl!;
  }

  /// Indicates the URL when the hovering on the link.
  @HostBinding('attr.href')
  String get visibleHref {
    // Memoize invoking this external function.
    return _cachedVisibleHref ??= _location.prepareExternalUrl(_routerLink);
  }

  @override
  void ngOnDestroy() {
    if (_element != null && _keyPressHandler != null) {
      _element!.removeEventListener('keypress', _keyPressHandler!);
    }
  }

  @HostListener('click')
  void onClick(web.MouseEvent event) {
    if (event.ctrlKey || event.metaKey) return;
    _trigger(event);
  }

  void _onKeyPress(web.KeyboardEvent event) {
    if (event.keyCode != 13 || event.ctrlKey || event.metaKey) {
      return;
    }
    _trigger(event);
  }

  void _trigger(web.Event event) {
    if (_target == null || _target == '_self') {
      event.preventDefault();
      _router.navigate(
          url.path,
          NavigationParams(
              queryParameters: url.queryParameters, fragment: url.fragment));
    }
  }
}
