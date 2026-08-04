import 'package:web/web.dart' as web;

import 'package:test/test.dart';
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_router/testing.dart';
import 'package:angulardart_test/angulardart_test.dart';

import 'router_link_directive_test.template.dart' as ng;

void main() {
  late FakeRouter fakeRouter;
  late InjectorFactory addInjector;

  setUp(() {
    fakeRouter = FakeRouter();
    addInjector = (i) {
      final strategy = MockLocationStrategy();
      // ignore: experimental_member_use
      return ReflectiveInjector.resolveStaticAndCreate([
        FactoryProvider(Location, () => Location(strategy), deps: []),
        ValueProvider(LocationStrategy, strategy),
        ValueProvider(Router, fakeRouter),
      ], i);
    };
  });

  tearDown(disposeAnyRunningTest);

  test('should attempt to navigate to the provided link', () async {
    final fixture = await NgTestBed<TestRouterLink>(
      ng.createTestRouterLinkFactory(),
    ).addInjector(addInjector).create(beforeChangeDetection: (comp) {
      comp.routerLink = '/users/bob';
    });
    final anchor = fixture.rootElement.querySelector('a') as web.HTMLAnchorElement;
    expect(anchor.pathname, '/users/bob');
    expect(fakeRouter.lastNavigatedPath, isNull);
    await fixture.update((_) => anchor.click());
    expect(fakeRouter.lastNavigatedPath, '/users/bob');
  });

  test('should attempt to navigate on Enter key press', () async {
    final testBed = NgTestBed<TestRouterLinkKeyPress>(
      ng.createTestRouterLinkKeyPressFactory(),
    ).addInjector(addInjector);
    final testFixture = await testBed.create();
    final div = testFixture.rootElement.querySelector('div')!;
    final keyboardEvent = createKeyboardEvent('keypress', 13);
    expect(fakeRouter.lastNavigatedPath, isNull);
    await testFixture.update((_) => div.dispatchEvent(keyboardEvent));
    expect(fakeRouter.lastNavigatedPath, '/foo/bar');
  });

  test('should parse out query params and fragment', () async {
    final fixture = await NgTestBed<TestRouterLink>(
      ng.createTestRouterLinkFactory(),
    ).addInjector(addInjector).create(beforeChangeDetection: (comp) {
      comp.routerLink = '/users/bob?param1=one&param2=2#frag';
    });
    final anchor = fixture.rootElement.querySelector('a') as web.HTMLAnchorElement;
    expect(anchor.pathname, '/users/bob');
    await fixture.update((_) => anchor.click());
    expect(fakeRouter.lastNavigatedPath, '/users/bob');
    expect(fakeRouter.lastNavigatedParams?.queryParameters, {
      'param1': 'one',
      'param2': '2',
    });
    expect(fakeRouter.lastNavigatedParams?.fragment, 'frag');
  });

  test('should not use the router when the target is not _self', () async {
    final fixture = await NgTestBed<TestRouterLinkWithTarget>(
      ng.createTestRouterLinkWithTargetFactory(),
    ).addInjector(addInjector).create(beforeChangeDetection: (comp) {
      comp.routerLink = '/users/bob';
    });
    final anchor = fixture.rootElement.querySelector('a') as web.HTMLAnchorElement;
    expect(anchor.pathname, '/users/bob');
    expect(anchor.target, '_parent');
    await fixture.update((_) => anchor.click());
    expect(fakeRouter.lastNavigatedPath, isNull);
  });
}

@Component(
  selector: 'test-router-link',
  directives: [
    RouterLink,
  ],
  template: r'''
    <a [routerLink]="routerLink"></a>
  ''',
)
class TestRouterLink {
  late String routerLink;
}

@Component(
  selector: 'test-router-link-keypress',
  template: '<div [routerLink]="routerLink"></div>',
  directives: [RouterLink],
)
class TestRouterLinkKeyPress {
  String routerLink = '/foo/bar';
}

@Component(
  selector: 'test-router-link',
  directives: [
    RouterLink,
  ],
  template: r'''
    <a (click)="onClick($event)" [routerLink]="routerLink" target="_parent"></a>
  ''',
)
class TestRouterLinkWithTarget {
  late String routerLink;

  void onClick(web.MouseEvent event) {
    // Prevent navigating away from test page.
    event.preventDefault();
  }
}

class FakeRouter implements Router {
  String? lastNavigatedPath;
  NavigationParams? lastNavigatedParams;

  @override
  Future<NavigationResult> navigate(
    String routerLink, [
    NavigationParams? navigationParams,
  ]) async {
    lastNavigatedPath = routerLink;
    lastNavigatedParams = navigationParams;
    return NavigationResult.SUCCESS;
  }

  @override
  dynamic noSuchMethod(i) => super.noSuchMethod(i);
}

web.Event createKeyboardEvent(
  String type,
  int keyCode, {
  bool ctrlKey = false,
  bool altKey = false,
  bool shiftKey = false,
  bool metaKey = false,
}) {
  return web.KeyboardEvent(
    type,
    web.KeyboardEventInit(
      bubbles: true,
      cancelable: true,
      keyCode: keyCode,
      ctrlKey: ctrlKey,
      altKey: altKey,
      shiftKey: shiftKey,
      metaKey: metaKey,
    ),
  );
}
