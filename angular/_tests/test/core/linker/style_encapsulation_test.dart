import 'package:web/web.dart' as web;

import 'package:test/test.dart';
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_test/angulardart_test.dart';

import 'style_encapsulation_test.template.dart' as ng;

void main() {
  tearDown(() {
    final styles = web.document.head!.querySelectorAll('style');
    for (var i = 0; i < styles.length; i++) {
      final e = styles.item(i)!;
      e.parentNode?.removeChild(e);
    }
    return disposeAnyRunningTest();
  });

  String failureReason(web.Element target) {
    final lastStyles = web.document.head!.querySelectorAll('style');
    final styleTexts = <String>[];
    for (var i = 0; i < lastStyles.length; i++) {
      styleTexts.add(lastStyles.item(i)!.textContent ?? '');
    }
    final styleText = styleTexts.join('\n');
    return 'HTML:\n\n${target.outerHTML}\nCSS:\n\n$styleText';
  }

  test('should encapsulate usages of [class]=', () async {
    final testBed = NgTestBed(ng.createTestSetClassPropertyFactory());
    final fixture = await testBed.create();
    final element = fixture.rootElement.querySelector('div')!;
    expect(
      web.window.getComputedStyle(element).position,
      'absolute',
      reason: failureReason(element),
    );
  });

  test('should encapsulate usages of [attr.class]=', () async {
    final testBed = NgTestBed(ng.createTestSetClassAttributeFactory());
    final fixture = await testBed.create();
    final element = fixture.rootElement.querySelector('div')!;
    expect(
      web.window.getComputedStyle(element).position,
      'absolute',
      reason: failureReason(element),
    );
  });

  test('should support encapsulation piercing ::ng-deep', () async {
    final testBed = NgTestBed(ng.createTestEncapsulationPierceFactory());
    final fixture = await testBed.create();
    final element = fixture.rootElement.querySelector('button')!;
    expect(
      web.window.getComputedStyle(element).textTransform,
      isNot('uppercase'),
      reason: failureReason(element),
    );
  });
}

@Component(
  selector: 'test',
  template: r'''
    <div [class]="className">Hello World</div>
  ''',
  styles: [
    r'''
    .is-fancy {
      position: absolute;
    }
  '''
  ],
)
class TestSetClassProperty {
  String get className => 'is-fancy';
}

@Component(
  selector: 'test',
  template: r'''
    <div [attr.class]="className">Hello World</div>
  ''',
  styles: [
    r'''
    .is-fancy {
      position: absolute;
    }
  '''
  ],
)
class TestSetClassAttribute {
  String get className => 'is-fancy';
}

@Component(
  selector: 'test',
  template: r'''
    <child-with-text class="no-uppercase-test"></child-with-text>
  ''',
  directives: [
    ChildComponentWithUppercaseText,
  ],
  styles: [
    r'''
    .no-uppercase-test ::ng-deep .trigger-button {
      text-transform: inherit;
    }
  '''
  ],
)
class TestEncapsulationPierce {}

@Component(
  selector: 'child-with-text',
  template: r'''
    <button class="trigger-button">Hello World</button>
  ''',
  styles: [
    r'''
    .trigger-button {
      text-transform: uppercase;
    }
  '''
  ],
)
class ChildComponentWithUppercaseText {}
