import 'package:test/test.dart';
import 'package:angulardart_compiler/v1/src/compiler/schema/dom_element_schema_registry.dart'
    show DomElementSchemaRegistry;

void main() {
  group('DomElementSchemaRegistry textContent', () {
    late DomElementSchemaRegistry registry;
    setUp(() {
      registry = DomElementSchemaRegistry();
    });

    test('should recognize textContent as a known property on all elements', () {
      expect(registry.hasProperty('div', 'textContent'), isTrue);
      expect(registry.hasProperty('span', 'textContent'), isTrue);
      expect(registry.hasProperty('p', 'textContent'), isTrue);
      expect(registry.hasProperty('h1', 'textContent'), isTrue);
      expect(registry.hasProperty('a', 'textContent'), isTrue);
      expect(registry.hasProperty('button', 'textContent'), isTrue);
      expect(registry.hasProperty('custom-element', 'textContent'), isTrue);
    });

    test('should recognize innerHTML as a known property (existing behavior)', () {
      expect(registry.hasProperty('div', 'innerHTML'), isTrue);
      expect(registry.hasProperty('span', 'innerHTML'), isTrue);
    });
  });
}
