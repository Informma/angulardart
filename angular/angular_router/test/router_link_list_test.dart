import 'package:test/test.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_router/testing.dart';
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_test/angulardart_test.dart';

import 'router_link_list_test.template.dart' as ng;

void main() {
  tearDown(disposeAnyRunningTest);

  group('RouterLink with List', () {
    test('should accept List<String> for routerLink', () async {
      final fixture = await NgTestBed<TestComponent>(
        ng.TestComponentNgFactory,
      ).addInjector(injector).create();
      final anchor = fixture.rootElement.querySelector('a');

      expect(anchor, isNotNull);
      expect(anchor!.getAttribute('href'), '/guide/template-syntax');
    });
  });
}

@GenerateInjector(routerProvidersTest)
InjectorFactory injector = ng.injector$Injector;

@Component(
  selector: 'test-component',
  template: '<a [routerLink]="[\'/guide\', \'template-syntax\']">Guide</a>',
  directives: [routerDirectives],
)
class TestComponent {}
