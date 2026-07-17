
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:angular_router/angular_router.dart';

class MockPlatformLocation extends Mock implements PlatformLocation {}

void main() {
  late LocationStrategy locationStrategy;
  late MockPlatformLocation platformLocation;

  group("empty URL doesn't overwrite query parameters", () {
    setUp(() {
      platformLocation = MockPlatformLocation();
      locationStrategy = HashLocationStrategy(platformLocation, null);
      when(platformLocation.pathname).thenReturn('/foo');
      when(platformLocation.search).thenReturn('?bar=baz');
    });

    test('on push', () {
      locationStrategy.pushState('', '', '', '');
      verify(platformLocation.pushState('', '', '/foo?bar=baz'));
    });

    test('on replace', () {
      locationStrategy.replaceState('', '', '', '');
      verify(platformLocation.replaceState('', '', '/foo?bar=baz'));
    });
  });
}
