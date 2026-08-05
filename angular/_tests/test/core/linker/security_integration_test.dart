import 'dart:js_interop';
import 'package:web/web.dart' as web;

import 'package:test/test.dart';
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_test/angulardart_test.dart';

import 'security_integration_test.template.dart' as ng;

void main() {
  tearDown(disposeAnyRunningTest);

  test('should escape unsafe attributes', () async {
    final testBed = NgTestBed(ng.createUnsafeAttributeComponentFactory());
    final testFixture = await testBed.create();
    final a = testFixture.rootElement.querySelector('a') as web.HTMLAnchorElement;
    expect(a.href, matches(r'.*/hello$'));
    await testFixture.update((component) {
      component.href = 'javascript:alert(1)';
    });
    expect(a.href, isNot(contains('javascript')));
  }, tags: 'fails-on-ci');

  test('should escape unsafe styles', () async {
    final testBed = NgTestBed(ng.createUnsafeStyleComponentFactory());
    final testFixture = await testBed.create();
    final div = testFixture.rootElement.querySelector('div')!;
    expect((div as web.HTMLElement).style.background, matches('red'));
    await testFixture.update((component) {
      component.backgroundStyle = 'url(javascript:evil())';
    });
    expect(div.style.background, isNot(contains('javascript')));
  });

  test('should escape unsafe HTML', () async {
    final testBed = NgTestBed(ng.createUnsafeHtmlComponentFactory());
    final testFixture = await testBed.create();
    final div = testFixture.rootElement.querySelector('div')!;
    expect((div.innerHTML as JSString).toDart, 'some <p>text</p>');
    await testFixture.update((component) {
      component.html = 'ha <script>evil()</script>';
    });
    expect((div.innerHTML as JSString).toDart, 'ha ');
    await testFixture.update((component) {
      component.html = 'also <img src="x" onerror="evil()"> evil';
    });
    expect((div.innerHTML as JSString).toDart, 'also <img src="x"> evil');
    await testFixture.update((component) {
      final srcdoc = '<div></div><script></script>';
      component.html = 'also <iframe srcdoc="$srcdoc"> content</iframe>';
    });
    expect(
      (div.innerHTML as JSString).toDart,
      'also ',
    );
  }, tags: 'fails-on-ci');
}

@Component(
  selector: 'unsafe-attribute',
  template: '<a [href]="href">Link Title</a>',
)
class UnsafeAttributeComponent {
  String href = 'hello';
}

@Component(
  selector: 'unsafe-style',
  template: '<div [style.background]="backgroundStyle"></div>',
)
class UnsafeStyleComponent {
  String backgroundStyle = 'red';
}

@Component(
  selector: 'unsafe-html',
  template: '<div [innerHtml]="html"></div>',
)
class UnsafeHtmlComponent {
  String html = 'some <p>text</p>';
}
