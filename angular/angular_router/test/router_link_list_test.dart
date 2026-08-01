import 'package:test/test.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_test/angulardart_test.dart';

import 'router_link_list_test.template.dart' as ng;

void main() {
  tearDown(disposeAnyRunningTest);

  group('RouterLink with List', () {
    test('should accept List<String> for routerLink', () async {
      final fixture = await ng.TestComponentNgFactory.create();
      final routerLink = fixture.rootElement!.querySelector('[routerLink]');
      
      expect(routerLink, isNotNull);
      expect(routerLink!.attributes['routerLink'], isNotNull);
    });
  });
}

@Component(
  selector: 'test-component',
  template: '<a [routerLink]="[\'/guide\', \'template-syntax\']">Guide</a>',
  directives: [routerDirectives],
)
class TestComponent {}
