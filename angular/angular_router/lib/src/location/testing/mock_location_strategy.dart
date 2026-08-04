import 'dart:async';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart' show Injectable;
import 'package:angulardart_router/src/location/location_strategy.dart'
    show LocationStrategy;

@Injectable()
class MockLocationStrategy extends LocationStrategy {
  String internalBaseHref = '/';
  String internalPath = '/';
  String internalTitle = '';
  String internalHash = '';
  List<String> urlChanges = [];

  final _subject = StreamController<web.PopStateEvent>();

  void simulatePopState(String url) {
    internalPath = url;
    _subject.add(web.PopStateEvent('popstate'));
  }

  @override
  String hash() => internalHash;

  @override
  String path() => internalPath;

  @override
  String prepareExternalUrl(String internal) {
    if (internal.startsWith('/') && internalBaseHref.endsWith('/')) {
      return internalBaseHref + internal.substring(1);
    }
    return internalBaseHref + internal;
  }

  @override
  void pushState(Object? ctx, String title, String path, String query) {
    internalTitle = title;
    var url = path + (query.isNotEmpty ? ('?$query') : '');
    internalPath = url;
    var externalUrl = prepareExternalUrl(url);
    urlChanges.add(externalUrl);
  }

  @override
  void replaceState(Object? ctx, String title, String path, String query) {
    internalTitle = title;
    var url = path + (query.isNotEmpty ? ('?$query') : '');
    internalPath = url;
    var externalUrl = prepareExternalUrl(url);
    urlChanges.add('replace: $externalUrl');
  }

  @override
  void onPopState(void Function(web.Event) fn) {
    _subject.stream.listen((e) => fn(e));
  }

  @override
  String getBaseHref() => internalBaseHref;

  @override
  void back() {
    while (urlChanges.isNotEmpty && urlChanges.last.startsWith('replace: ')) {
      urlChanges.removeLast();
    }
    if (urlChanges.isNotEmpty) {
      urlChanges.removeLast();
      var nextUrl = urlChanges.isNotEmpty ? urlChanges.last : '';
      if (nextUrl.startsWith('replace: ')) {
        nextUrl = nextUrl.substring('replace: '.length);
      }
      simulatePopState(nextUrl);
    }
  }

  @override
  void forward() {
    throw UnimplementedError('not implemented');
  }
}
