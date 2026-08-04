import 'package:web/web.dart' as web;

import 'package:test/test.dart';
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_test/angulardart_test.dart';

import 'query_html_element_test.template.dart' as ng;

void main() {
  tearDown(disposeAnyRunningTest);

  test('should support @ViewChild with Element', () async {
    final fixture = await NgTestBed(ng.createUsesElementFactory()).create();
    expect(fixture.assertOnlyInstance.element!.textContent, '1');
  });

  test('should support @ViewChild with HtmlElement', () async {
    final fixture = await NgTestBed(ng.createUsesHtmlElementFactory()).create();
    expect(fixture.assertOnlyInstance.element!.textContent, '2');
  });

  test('should support @ViewChildren with Element', () async {
    final fixture =
        await NgTestBed(ng.createUsesListOfElementFactory()).create();
    expect(fixture.assertOnlyInstance.elements!.map((e) => e.textContent), ['1', '2']);
  });

  test('should support @ViewChildren with HtmlElement', () async {
    final fixture =
        await NgTestBed(ng.createUsesListOfHtmlElementFactory()).create();
    expect(fixture.assertOnlyInstance.elements!.map((e) => e.textContent), ['1', '2']);
  });
}

@Component(
  selector: 'uses-element',
  template: '<div #div>1</div>',
)
class UsesElement {
  @ViewChild('div')
  web.Element? element;
}

@Component(
  selector: 'uses-element',
  template: '<div #div>2</div>',
)
class UsesHtmlElement {
  @ViewChild('div')
  web.HTMLElement? element;
}

@Component(
  selector: 'uses-list-of-element',
  template: '<div #div>1</div><div #div>2</div>',
)
class UsesListOfElement {
  @ViewChildren('div')
  List<web.Element>? elements;
}

@Component(
  selector: 'uses-list-of-element',
  template: '<div #div>1</div><div #div>2</div>',
)
class UsesListOfHtmlElement {
  @ViewChildren('div')
  List<web.HTMLElement>? elements;
}
