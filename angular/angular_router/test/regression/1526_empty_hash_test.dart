
import 'package:test/test.dart';
import 'package:angulardart_router/angulardart_router.dart';

void main() {
  late LocationStrategy locationStrategy;
  late _FakePlatformLocation platformLocation;

  group("empty URL doesn't overwrite query parameters", () {
    setUp(() {
      platformLocation = _FakePlatformLocation()
        ..pathname = '/foo'
        ..search = '?bar=baz';
      locationStrategy = HashLocationStrategy(platformLocation, null);
    });

    test('on push', () {
      locationStrategy.pushState('', '', '', '');
      expect(platformLocation.pushStateCalls, hasLength(1));
      expect(platformLocation.pushStateCalls.first.url, '/foo?bar=baz');
    });

    test('on replace', () {
      locationStrategy.replaceState('', '', '', '');
      expect(platformLocation.replaceStateCalls, hasLength(1));
      expect(platformLocation.replaceStateCalls.first.url, '/foo?bar=baz');
    });
  });
}

class _FakePlatformLocation implements PlatformLocation {
  String pathname = '';
  String search = '';
  String hash = '';
  final List<_StateCall> pushStateCalls = [];
  final List<_StateCall> replaceStateCalls = [];

  @override
  void pushState(Object? state, String title, String? url) {
    pushStateCalls.add(_StateCall(state, title, url));
  }

  @override
  void replaceState(Object? state, String title, String? url) {
    replaceStateCalls.add(_StateCall(state, title, url));
  }

  @override
  dynamic noSuchMethod(Invocation invocation) {
    throw UnimplementedError('${invocation.memberName} not implemented');
  }
}

class _StateCall {
  final Object? state;
  final String title;
  final String? url;
  _StateCall(this.state, this.title, this.url);
}
