library;

import 'package:angulardart/angulardart.dart';

import '../location.dart' show Location;
import '../url.dart';

/// Stub implementation for VM/native builds.
@Directive(
  selector: '[routerLink]',
)
class RouterLink implements OnDestroy {
  final Location _location;

  late String _routerLink;
  String? _cachedVisibleHref;
  Url? _cachedUrl;

  RouterLink(
    dynamic router,
    this._location,
    dynamic target,
  );

  @Input()
  set routerLink(dynamic routerLink) {
    if (routerLink is String) {
      _routerLink = routerLink;
    } else if (routerLink is List) {
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

  @HostBinding('attr.href')
  String get visibleHref {
    return _cachedVisibleHref ??= _location.prepareExternalUrl(_routerLink);
  }

  @override
  void ngOnDestroy() {}
}
