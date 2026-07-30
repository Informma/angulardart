@TestOn('browser')
library;

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_test/angulardart_test.dart';
import 'package:test/test.dart';

import 'nullable_class_binding_test.template.dart' as ng;

void main() {
  group('Nullable class binding', () {
    late NgTestFixture<TestComponent> fixture;

    setUp(() async {
      final testBed = NgTestBed<TestComponent>(ng.createTestComponentFactory());
      fixture = await testBed.create();
    });

    tearDown(disposeAnyRunningTest);

    test('should handle nullable bool with ! operator', () async {
      await fixture.update((c) => c.nullableValue = true);
      final div = fixture.rootElement.querySelector('div');
      expect(div?.classes.contains('my-class'), isTrue);
    });

    test('should handle nullable bool with ?? operator', () async {
      await fixture.update((c) => c.nullableValue = false);
      final div = fixture.rootElement.querySelector('div');
      expect(div?.classes.contains('my-class'), isFalse);
    });

    test('should handle null value', () async {
      await fixture.update((c) => c.nullableValue = null);
      final div = fixture.rootElement.querySelector('div');
      expect(div?.classes.contains('my-class'), isFalse);
    });
  });
}

@Component(
  selector: 'test',
  template: '''
    <div [class.my-class]="nullableValue!">Test 1</div>
    <div [class.my-class]="nullableValue ?? false">Test 2</div>
  ''',
)
class TestComponent {
  bool? nullableValue = true;
}
