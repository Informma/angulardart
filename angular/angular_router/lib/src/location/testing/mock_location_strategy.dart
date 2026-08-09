library;

import 'dart:async';

import 'package:angulardart/angulardart.dart' show Injectable;

import '../../router_types.dart';
import '../location_strategy.dart' show LocationStrategy;

@Injectable()
class MockLocationStrategy implements LocationStrategy {
  String internalBaseHref = '/';
  String internalPath = '/';
  String internalTitle = '';
  String internalHash = '';
  List<String> urlChanges = [];
  final _subject = StreamController<RouterPopStateEvent>();

  void simulatePopState(String url) {
    internalPath = url;
    _subject.add(createPopStateEvent());
  }

  @override String hash() => internalHash;
  @override String path() => internalPath;

  @override String prepareExternalUrl(String internal) {
    if (internal.startsWith('/') && internalBaseHref.endsWith('/')) return internalBaseHref + internal.substring(1);
    return internalBaseHref + internal;
  }

  @override void pushState(Object? ctx, String title, String path, String query) {
    internalTitle = title;
    var url = path + (query.isNotEmpty ? ('?$query') : '');
    internalPath = url;
    urlChanges.add(prepareExternalUrl(url));
  }

  @override void replaceState(Object? ctx, String title, String path, String query) {
    internalTitle = title;
    var url = path + (query.isNotEmpty ? ('?$query') : '');
    internalPath = url;
    urlChanges.add('replace: ${prepareExternalUrl(url)}');
  }

  @override void onPopState(void Function(RouterEvent) fn) {
    _subject.stream.listen((e) => fn(e));
  }

  @override String getBaseHref() => internalBaseHref;

  @override void back() {
    while (urlChanges.isNotEmpty && urlChanges.last.startsWith('replace: ')) {
      urlChanges.removeLast();
    }
    if (urlChanges.isNotEmpty) {
      urlChanges.removeLast();
      var nextUrl = urlChanges.isNotEmpty ? urlChanges.last : '';
      if (nextUrl.startsWith('replace: ')) nextUrl = nextUrl.substring('replace: '.length);
      simulatePopState(nextUrl);
    }
  }

  @override void forward() => throw UnimplementedError('not implemented');
}
