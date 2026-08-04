import 'package:web/web.dart' as web;

import 'package:test/test.dart';
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_test/angulardart_test.dart';

import 'view_child_regression_test.template.dart' as ng;

void main() {
  test('$ViewChild#nativeElement should be accessible', () async {
    final fixture = await NgTestBed(ng.createViewChildTestFactory()).create();
    await fixture.update((component) {
      expect(component.portalElement, isNull);
      component.showChildHost = true;
    });
    await fixture.update((component) {
      expect(component.portalElement, isNotNull);
      expect(component.containerElement, isNotNull);
      expect(component.markerViewContainer, isNotNull);
    });
  });
}

@Component(
  selector: 'view-child-test',
  template: r'''
    <div #container>
      <template [ngIf]="showChildHost">
        <div #portal childHost></div>
      </template>
    </div>
    <div #marker></div>
  ''',
  directives: [
    ChildHostDirective,
    NgIf,
  ],
)
class ViewChildTest {
  @ViewChild('portal', read: web.Element)
  web.Element? portalElement;

  @ViewChild('container', read: web.Element)
  web.Element? containerElement;

  @ViewChild('marker', read: ViewContainerRef)
  ViewContainerRef? markerViewContainer;

  var showChildHost = false;
}

@Directive(
  selector: '[childHost]',
)
class ChildHostDirective {}
