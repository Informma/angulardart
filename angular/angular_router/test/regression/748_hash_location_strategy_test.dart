
import 'dart:html';

import 'package:test/test.dart';
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_test/angulardart_test.dart';

import '748_hash_location_strategy_test.template.dart' as ng;

final platformLocation = FakePlatformLocation();

void main() {
  setUp(() {
    platformLocation.reset();
  });

  tearDown(disposeAnyRunningTest);

  test('browser location should match clicked href', () async {
    final testBed = NgTestBed<AppComponent>(ng.createAppComponentFactory(),
        rootInjector: injectorFactory);
    final testFixture = await testBed.create();
    expect(testFixture.assertOnlyInstance.anchor?.getAttribute('href'), '#/foo');
    await testFixture.update((c) {
      c.anchor?.click();
    });
    expect(platformLocation.pushStateCalls, hasLength(1));
    expect(platformLocation.pushStateCalls.first.url, '#/foo');
  });
}

PlatformLocation platformLocationFactory() => platformLocation;

class FakePlatformLocation implements BrowserPlatformLocation {
  String pathname = '';
  String search = '';
  String hash = '';
  final List<_StateCall> pushStateCalls = [];
  final List<_StateCall> replaceStateCalls = [];

  void reset() {
    pathname = '';
    search = '';
    hash = '';
    pushStateCalls.clear();
    replaceStateCalls.clear();
  }

  @override
  void pushState(Object? state, String title, String? url) {
    pushStateCalls.add(_StateCall(state, title, url));
  }

  @override
  void replaceState(Object? state, String title, String? url) {
    replaceStateCalls.add(_StateCall(state, title, url));
  }

  @override
  void onPopState(EventListener fn) {}

  @override
  void onHashChange(EventListener fn) {}

  @override
  void forward() {}

  @override
  void back() {}

  @override
  String? getBaseHrefFromDOM() => null;

  @override
  dynamic noSuchMethod(Invocation invocation) {
    if (invocation.memberName == #pathname) return pathname;
    if (invocation.memberName == #search) return search;
    if (invocation.memberName == #hash) return hash;
    throw UnimplementedError('${invocation.memberName} not implemented');
  }
}

class _StateCall {
  final Object? state;
  final String title;
  final String? url;
  _StateCall(this.state, this.title, this.url);
}

@GenerateInjector([
  routerProvidersHash,
  FactoryProvider(PlatformLocation, platformLocationFactory),
])
InjectorFactory injectorFactory = ng.injectorFactory$Injector;

@Component(
  selector: 'app',
  template: '''
    <a #routerLink [routerLink]="fooRoute.toUrl()"></a>
    <router-outlet [routes]="routes"></router-outlet>
  ''',
  directives: [RouterLink, RouterOutlet],
)
class AppComponent {
  static final fooRoute = RouteDefinition(
    path: '/foo',
    component: ng.createFooComponentFactory(),
  );
  static final routes = [fooRoute];

  @ViewChild('routerLink')
  HtmlElement? anchor;
}

@Component(selector: 'foo', template: '')
class FooComponent {}
