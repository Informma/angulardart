import 'dart:js_interop';
import 'package:web/web.dart' as web;

import 'package:test/test.dart';
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_test/angulardart_test.dart';

import 'key_events_test.template.dart' as ng;

void main() {
  tearDown(disposeAnyRunningTest);

  test("Should receive 'keydown' event", () async {
    var testBed = NgTestBed(ng.createKeydownListenerComponentFactory());
    var testFixture = await testBed.create();
    var event = web.KeyboardEvent('keydown');
    testFixture.rootElement.dispatchEvent(event);
    await testFixture.update((component) {
      expect(component.receivedKeydown, true);
      expect(component.receivedKeydownA, false);
      expect(component.receivedKeydownShiftA, false);
    });
  });

  test("Should receive 'keydown.a' event", () async {
    var testBed = NgTestBed(ng.createKeydownListenerComponentFactory());
    var testFixture = await testBed.create();
    var event = createKeyboardEvent('keydown', 65);
    testFixture.rootElement.dispatchEvent(event);
    await testFixture.update((component) {
      expect(component.receivedKeydown, true);
      expect(component.receivedKeydownA, true);
      expect(component.receivedKeydownShiftA, false);
    });
  });

  test("Should receive 'keydown.shift.a", () async {
    var testBed = NgTestBed(ng.createKeydownListenerComponentFactory());
    var testFixture = await testBed.create();
    var event = createKeyboardEvent('keydown', 65, shiftKey: true);
    testFixture.rootElement.dispatchEvent(event);
    await testFixture.update((component) {
      expect(component.receivedKeydown, true);
      expect(component.receivedKeydownA, false);
      expect(component.receivedKeydownShiftA, true);
    });
  });

  test("Should receive 'keypress' event", () async {
    var testBed = NgTestBed(ng.createKeypressListenerComponentFactory());
    var testFixture = await testBed.create();
    var event = web.KeyboardEvent('keypress');
    testFixture.rootElement.dispatchEvent(event);
    await testFixture.update((component) {
      expect(component.receivedKeypress, true);
    });
  });

  test("Should receive 'keyup' event", () async {
    var testBed = NgTestBed(ng.createKeyupListenerComponentFactory());
    var testFixture = await testBed.create();
    var event = web.KeyboardEvent('keyup');
    testFixture.rootElement.dispatchEvent(event);
    await testFixture.update((component) {
      expect(component.receivedKeyup, true);
      expect(component.receivedKeyupEnter, false);
      expect(component.receivedKeyupCtrlEnter, false);
    });
  });

  test("Should receive 'keyup.enter' event", () async {
    var testBed = NgTestBed(ng.createKeyupListenerComponentFactory());
    var testFixture = await testBed.create();
    var event = createKeyboardEvent('keyup', 13);
    testFixture.rootElement.dispatchEvent(event);
    await testFixture.update((component) {
      expect(component.receivedKeyup, true);
      expect(component.receivedKeyupEnter, true);
      expect(component.receivedKeyupCtrlEnter, false);
    });
  });

  test("Should receive 'keyup.control.enter' event", () async {
    var testBed = NgTestBed(ng.createKeyupListenerComponentFactory());
    var testFixture = await testBed.create();
    var event = createKeyboardEvent('keyup', 13, ctrlKey: true);
    testFixture.rootElement.dispatchEvent(event);
    await testFixture.update((component) {
      expect(component.receivedKeyup, true);
      expect(component.receivedKeyupEnter, false);
      expect(component.receivedKeyupCtrlEnter, true);
    });
  });

  test('Should receive keyboard event with multiple modifiers', () async {
    var testBed = NgTestBed(ng.createModifiersListenerFactory());
    var testFixture = await testBed.create();
    var event = createKeyboardEvent('keyup', 48,
        altKey: true, metaKey: true);
    testFixture.rootElement.dispatchEvent(event);
    await testFixture.update((component) {
      expect(component.receivedModifiers, true);
    });
  });
}

@Component(
  selector: 'keydown-listener',
  template: '<div></div>',
)
class KeydownListenerComponent {
  bool receivedKeydown = false;
  bool receivedKeydownA = false;
  bool receivedKeydownShiftA = false;

  @HostListener('keydown')
  void onKeyDown() => receivedKeydown = true;

  @HostListener('keydown.a')
  void onKeyDownA() => receivedKeydownA = true;

  @HostListener('keydown.shift.a')
  void onKeyDownShiftA() => receivedKeydownShiftA = true;
}

@Component(
  selector: 'keypress-listener',
  template: '<div></div>',
)
class KeypressListenerComponent {
  @HostListener('keypress')
  void onKeyPress() => receivedKeypress = true;

  bool receivedKeypress = false;
}

@Component(
  selector: 'keyup-listener',
  template: '<div></div>',
)
class KeyupListenerComponent {
  @HostListener('keyup')
  void onKeyUp() => receivedKeyup = true;

  @HostListener('keyup.enter')
  void onKeyUpEnter() => receivedKeyupEnter = true;

  @HostListener('keyup.control.enter')
  void onKeyUpControlEnter() => receivedKeyupCtrlEnter = true;

  bool receivedKeyup = false;
  bool receivedKeyupEnter = false;
  bool receivedKeyupCtrlEnter = false;
}

@Component(
  selector: 'modifiers-listener',
  template: '<div></div>',
)
class ModifiersListener {
  @HostListener('keyup.alt.meta.0')
  void onKeyUpAltMeta0() => receivedModifiers = true;

  bool receivedModifiers = false;
}

web.KeyboardEvent createKeyboardEvent(
  String type,
  int keyCode, {
  bool ctrlKey = false,
  bool altKey = false,
  bool shiftKey = false,
  bool metaKey = false,
}) {
  return web.KeyboardEvent(type,
    web.KeyboardEventInit(
      keyCode: keyCode,
      ctrlKey: ctrlKey,
      altKey: altKey,
      shiftKey: shiftKey,
      metaKey: metaKey,
      bubbles: true,
      cancelable: true,
    ),
  );
}
