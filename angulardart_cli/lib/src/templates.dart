class Templates {
  static const projectPubspec = '''
name: {{name}}
description: {{description}}
version: 0.0.1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  angulardart: '>=9.0.0 <10.0.0'

dev_dependencies:
  build_runner: '>=2.16.0 <3.0.0'
  build_web_compilers: '>=4.8.0 <5.0.0'
  angulardart_test: '>=6.0.0 <7.0.0'
  lints: '>=6.0.0 <7.0.0'
  test: '>=1.31.0 <2.0.0'
''';

  static const projectAnalysisOptions = '''
include: package:lints/recommended.yaml

analyzer:
  errors:
    uri_has_not_been_generated: ignore
''';

  static const projectBuildYaml = '''
targets:
  \$default:
    builders:
      build_web_compilers|entrypoint:
        generate_for:
          - web/main.dart
        release_options:
          dart2js_args:
            - -O4
''';

  static const projectGitignore = '''
.build/
.dart_tool/
.packages
pubspec.lock
''';

  static const projectIndexHtml = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{description}}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styles.css">
    <script defer src="main.dart.js"></script>
</head>
<body>
    <{{component.selector}}></{{component.selector}}>
</body>
</html>
''';

  static const projectMainDart = '''
import 'package:angulardart/angulardart.dart';
import 'package:{{name}}/{{component.targetName}}.template.dart' as ng;

void main() {
  runApp(ng.{{component.className}}NgFactory);
}
''';

  static const projectStyles = '''
body {
  font-family: Roboto, 'Helvetica Neue', Arial, sans-serif;
  margin: 0;
  padding: 20px;
}
''';

  static const componentDart = '''
import 'package:angulardart/angulardart.dart';

@Component(
  selector: '{{selector}}',
  templateUrl: '{{targetName}}.html',
)
class {{className}} {
  var name = 'AngularDart';
}
''';

  static const componentHtml = '''{{=<% %>=}}
<h1>Hello {{name}}</h1>
<%={{ }}=%>''';

  static const projectAppComponentHtmlSsr = '<h1>Hello {{name}}</h1>';

  static const directiveDart = '''
import 'package:angulardart/angulardart.dart';

@Directive(
  selector: '[{{selector}}]',
)
class {{className}} {
  final ElementRef _elementRef;

  {{className}}(this._elementRef);
}
''';

  static const pipeDart = '''
import 'package:angulardart/angulardart.dart';

@Pipe('{{className}}')
class {{className}} implements PipeTransform {
  @override
  dynamic transform(dynamic value, [List<dynamic>? args]) {
    return value;
  }
}
''';

  static const serviceDart = '''
import 'package:angulardart/angulardart.dart';

@Injectable()
class {{className}} {
  {{className}}();
}
''';

  static const projectPubspecSeo = '''
name: {{name}}
description: {{description}}
version: 0.0.1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  angulardart: '>=9.0.0 <10.0.0'
  angulardart_router: '>=5.0.0 <6.0.0'
  angulardart_seo: '>=1.0.0 <2.0.0'

dev_dependencies:
  build_runner: '>=2.16.0 <3.0.0'
  build_web_compilers: '>=4.8.0 <5.0.0'
  angulardart_test: '>=6.0.0 <7.0.0'
  angulardart_prerender: '>=1.0.0 <2.0.0'
  lints: '>=6.0.0 <7.0.0'
  test: '>=1.31.0 <2.0.0'
''';

  static const projectIndexHtmlSeo = '''<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <base href="/">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styles.css">
    <script defer src="main.dart.js"></script>
</head>
<body>
    <{{component.selector}}></{{component.selector}}>
</body>
</html>
''';

  static const projectMainDartSeo = '''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_seo/angulardart_seo.dart';

// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

@GenerateInjector([routerProviders, SeoService, TitleService])
final InjectorFactory appInjector = ng.appInjector\$Injector;

@Component(
  selector: '{{component.selector}}',
  template: '<div class="nav"><a [routerLink]="[\\'/\\']">Home</a> | <a [routerLink]="[\\'/about\\']">About</a> | <a [routerLink]="[\\'/contact\\']">Contact</a></div><main><router-outlet [routes]="routes"></router-outlet></main>',
  directives: [routerDirectives],
)
class AppComponent implements OnInit {
  final Router _router;
  List<RouteDefinition> routes = [];

  AppComponent(this._router);

  @override
  void ngOnInit() {
    _router.onRouteActivated.listen((_) {});
    routes = [
      RouteDefinition(path: '/', component: ng.HomeComponentNgFactory, useAsDefault: true),
      RouteDefinition(path: '/about', component: ng.AboutComponentNgFactory),
      RouteDefinition(path: '/contact', component: ng.ContactComponentNgFactory),
    ];
  }
}

@Component(
  selector: 'home-page',
  template: '<h1>Welcome to {{name}}</h1>' +
      '<p>{{description}} - This is the home page.</p>' +
      '<p>This page demonstrates SEO with dynamic meta tags and prerendering for search engines.</p>',
  providers: [SeoService, TitleService],
)
class HomeComponent implements OnInit {
  final SeoService _seo;
  final TitleService _title;

  HomeComponent(this._seo, this._title);

  @override
  void ngOnInit() {
    _title.setTitle('Home - {{description}}');
    _seo.setPageSeo(
      title: 'Home - {{description}}',
      description: 'Welcome to {{description}}. This is the home page with full SEO support.',
      
    );
  }
}

@Component(
  selector: 'about-page',
  template: '<h1>About Us</h1>' +
      '<p>This is the about page. Learn more about {{description}} and what we do.</p>' +
      '<p>Each page has unique SEO metadata for better search engine indexing.</p>',
  providers: [SeoService, TitleService],
)
class AboutComponent implements OnInit {
  final SeoService _seo;
  final TitleService _title;

  AboutComponent(this._seo, this._title);

  @override
  void ngOnInit() {
    _title.setTitle('About - {{description}}');
    _seo.setPageSeo(
      title: 'About Us - {{description}}',
      description: 'Learn about {{description}}, our AngularDart application with SEO and prerendering.',
      
    );
  }
}

@Component(
  selector: 'contact-page',
  template: '<h1>Contact</h1>' +
      '<p>Get in touch with us. This is the contact page for {{description}}.</p>' +
      '<p>Email: hello@example.com</p>',
  providers: [SeoService, TitleService],
)
class ContactComponent implements OnInit {
  final SeoService _seo;
  final TitleService _title;

  ContactComponent(this._seo, this._title);

  @override
  void ngOnInit() {
    _title.setTitle('Contact - {{description}}');
    _seo.setPageSeo(
      title: 'Contact Us - {{description}}',
      description: 'Contact us about {{description}}. We are here to help.',
      
    );
  }
}

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: appInjector);
}
''';

  static const projectPrerenderYaml = '''routes:
  - /
  - /about
  - /contact

timeout: 30000
render_delay_ms: 10000
generate_sitemap: true
generate_robots: true
base_url: 'https://example.com'
''';

  static const seoAppComponentHtml = '''<nav>
    <a [routerLink]="['/']" routerLinkActive="active">Home</a> |
    <a [routerLink]="['/about']" routerLinkActive="active">About</a> |
    <a [routerLink]="['/contact']" routerLinkActive="active">Contact</a>
  </nav>
  <main><router-outlet></router-outlet></main>''';

  static const seoHomeComponentHtml = '''<h1>Welcome to {{name}}</h1>
<p>{{description}} - This is the home page.</p>''';

  static const seoAboutComponentHtml = '''<h1>About Us</h1>
<p>This is the about page for {{name}}.</p>''';

  static const seoContactComponentHtml = '''<h1>Contact</h1>
<p>Contact us about {{name}}.</p>''';

  // ===== SSR Templates =====

  static const projectPubspecSsr = '''name: {{name}}
description: {{description}}
version: 0.0.1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  angulardart: '>=9.0.0 <10.0.0'
  angulardart_server: '>=1.2.0 <2.0.0'

dev_dependencies:
  build_runner: '>=2.16.0 <3.0.0'
  build_web_compilers: '>=4.8.0 <5.0.0'
  angulardart_test: '>=6.0.0 <7.0.0'
  lints: '>=6.0.0 <7.0.0'
  test: '>=1.31.0 <2.0.0'
''';

  static const projectBuildYamlSsr = r'''targets:
  $default:
    builders:
      build_web_compilers|entrypoint:
        generate_for:
          - web/main.dart
          - web/main.server.dart
        release_options:
          dart2js_args:
            - -O4
''';

  static const projectIndexHtmlSsr = '''<!DOCTYPE html>
<html lang="en" ng-client-context="csr">
<head>
    <title>{{description}}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styles.css">
    <script defer src="main.dart.js"></script>
</head>
<body>
    <{{component.selector}}></{{component.selector}}>
</body>
</html>
''';

  static const projectMainDartSsr = '''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_server/angulardart_server.dart';
import 'package:{{name}}/platform_dom.dart' as platform_dom;
// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

void main() async {
  final isServerRendered =
      (platform_dom.window as dynamic).document.documentElement?.getAttribute('ng-server-context') == 'ssr';

  if (isServerRendered) {
    await hydrateApplication(ng.AppComponentNgFactory);
  } else {
    runApp(ng.AppComponentNgFactory);
  }
}

@Component(
  selector: '{{component.selector}}',
  templateUrl: 'app_component.html',
)
class {{component.className}} {
  var name = 'AngularDart';
}
''';

  static const projectMainServerDartEntry = '''import 'package:angulardart/angulardart.dart';

// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

/// Retourne le factory du composant racine pour le rendu server-side.
ComponentFactory<Object> get appComponentFactory =>
    ng.AppComponentNgFactory;
''';

  static const projectMainServerDartFixed = '''import 'dart:async';
import 'dart:io';

import 'package:angulardart_server/angulardart_server.dart';
// ignore: uri_has_not_been_generated
import '../web/main.server.dart' as ng;

final _mimeTypes = {
  '.css': 'text/css',
  '.js': 'application/javascript',
  '.html': 'text/html',
  '.json': 'application/json',
  '.png': 'image/png',
  '.svg': 'image/svg+xml',
  '.ico': 'image/x-icon',
  '.woff': 'font/woff',
  '.woff2': 'font/woff2',
};

/// Point d'entre du serveur HTTP SSR.
///
/// Compilez avec : dart run build_runner build web
/// Puis lancez : dart bin/server.dart
Future<void> main() async {
  final server = platformServer();

  await HttpServer.bind('localhost', 4000).then((httpServer) {
    print('Serveur SSR angulardart en cours d\\'exécution sur http://localhost:4000');

    httpServer.listen((request) async {
      final path = request.uri.path;

      // Sert les assets statiques (styles.css, main.dart.js, ...).
      if (_isStaticAsset(path)) {
        await _serveStatic(request);
        return;
      }

      try {
        final html = await server.renderApplication(
          ng.appComponentFactory,
          url: request.uri.toString(),
        );

        request.response
          ..headers.contentType = ContentType.html
          ..write(html)
          ..close();
      } catch (e, st) {
        print('Erreur lors du rendu : \$e');
        print(st);
        request.response
          ..statusCode = HttpStatus.internalServerError
          ..write('<h1>Erreur serveur</h1>')
          ..close();
      }
    });
  });
}

bool _isStaticAsset(String path) {
  final ext = path.contains('.') ? path.substring(path.lastIndexOf('.')) : '';
  return _mimeTypes.containsKey(ext);
}

File? _findStaticFile(String path) {
  final sourceFile = File('web\$path');
  if (sourceFile.existsSync()) return sourceFile;

  // Les assets compilés (ex: main.dart.js) sont émis sous
  // .dart_tool/build/generated/<package>/web/.
  final generated = Directory('.dart_tool/build/generated');
  if (generated.existsSync()) {
    for (final entry in generated.listSync()) {
      if (entry is Directory) {
        final candidate = File('\${entry.path}/web\$path');
        if (candidate.existsSync()) return candidate;
      }
    }
  }
  return null;
}

Future<void> _serveStatic(HttpRequest request) async {
  final path = request.uri.path;
  final file = _findStaticFile(path);

  if (file == null) {
    request.response.statusCode = HttpStatus.notFound;
    request.response.write('Non trouvé');
    await request.response.close();
    return;
  }

  final ext = path.substring(path.lastIndexOf('.'));
  request.response.headers.contentType =
      ContentType.parse(_mimeTypes[ext] ?? 'application/octet-stream');
  request.response.add(await file.readAsBytes());
  await request.response.close();
}
''';

  static const projectMainServerDartRouting = '''import 'dart:async';
import 'dart:io';

import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_server/angulardart_server.dart';
// ignore: uri_has_not_been_generated
import '../web/main.server.dart' as ng;

final _mimeTypes = {
  '.css': 'text/css',
  '.js': 'application/javascript',
  '.html': 'text/html',
  '.json': 'application/json',
  '.png': 'image/png',
  '.svg': 'image/svg+xml',
  '.ico': 'image/x-icon',
  '.woff': 'font/woff',
  '.woff2': 'font/woff2',
};

/// Point d'entre du serveur HTTP SSR (avec routing).
///
/// Compilez avec : dart run build_runner build web
/// Puis lancez : dart bin/server.dart
Future<void> main() async {
  final server = platformServer();

  // Le `<base href>` n'existe pas sur la VM (pas de document) ; on le fournit
  // explicitement pour que `PathLocationStrategy` puisse résoudre les routes.
  final baseHrefInjector = Injector.map({appBaseHref: '/'});

  await HttpServer.bind('localhost', 4000).then((httpServer) {
    print('Serveur SSR angulardart en cours d\\'exécution sur http://localhost:4000');

    httpServer.listen((request) async {
      final path = request.uri.path;

      // Sert les assets statiques (styles.css, main.dart.js, ...).
      if (_isStaticAsset(path)) {
        await _serveStatic(request);
        return;
      }

      try {
        final html = await server.renderApplication(
          ng.appComponentFactory,
          url: request.uri.toString(),
          parentInjector: ng.appInjector(baseHrefInjector),
        );

        request.response
          ..headers.contentType = ContentType.html
          ..write(html)
          ..close();
      } catch (e, st) {
        print('Erreur lors du rendu : \$e');
        print(st);
        request.response
          ..statusCode = HttpStatus.internalServerError
          ..write('<h1>Erreur serveur</h1>')
          ..close();
      }
    });
  });
}

bool _isStaticAsset(String path) {
  final ext = path.contains('.') ? path.substring(path.lastIndexOf('.')) : '';
  return _mimeTypes.containsKey(ext);
}

File? _findStaticFile(String path) {
  final sourceFile = File('web\$path');
  if (sourceFile.existsSync()) return sourceFile;

  // Les assets compilés (ex: main.dart.js) sont émis sous
  // .dart_tool/build/generated/<package>/web/.
  final generated = Directory('.dart_tool/build/generated');
  if (generated.existsSync()) {
    for (final entry in generated.listSync()) {
      if (entry is Directory) {
        final candidate = File('\${entry.path}/web\$path');
        if (candidate.existsSync()) return candidate;
      }
    }
  }
  return null;
}

Future<void> _serveStatic(HttpRequest request) async {
  final path = request.uri.path;
  final file = _findStaticFile(path);

  if (file == null) {
    request.response.statusCode = HttpStatus.notFound;
    request.response.write('Non trouvé');
    await request.response.close();
    return;
  }

  final ext = path.substring(path.lastIndexOf('.'));
  request.response.headers.contentType =
      ContentType.parse(_mimeTypes[ext] ?? 'application/octet-stream');
  request.response.add(await file.readAsBytes());
  await request.response.close();
}
''';

   static const projectReadmeSsr = '''# {{name}}

Application AngularDart avec rendu côté serveur (SSR).

## Structure

- `web/main.dart` — Entrée client-side (CSR + hydration)
- `web/main.server.dart` — Entrée server-side (SSR)
- `bin/server.dart` — Serveur HTTP pour le rendu SSR

## Utilisation

### Développement (client uniquement)

```bash
dart pub get
dart run build_runner serve
```

### Build SSR

```bash
dart pub get
ngdart generate-stubs
dart run build_runner clean
dart run build_runner build web
dart bin/server.dart
```

Le serveur AngularDart sera disponible sur http://localhost:4000

## Hydration

Lorsqu'un visiteur accède `http://localhost:4000` :

1. Le serveur rend le composant AngularDart en HTML string via SSR
2. Le HTML contient les marqueurs `data-ng-id` pour l'hydration
3. Le client reçoit le HTML pré-rendu et active l'application avec hydration
4. L'application client réutilise le DOM existant (pas de re-rendu)

Lorsqu'un visiteur accède via un navigateur direct (sans SSR) :
- Rendu client-side normal via `runApp()`
''';

  // ===== Platform DOM conditional imports for SSR =====

  static const projectPlatformDom = '''/// Platform-agnostic DOM access for SSR.
///
/// On web platforms, re-exports [dart:html].
/// On native/AOT platforms (server-side rendering), uses stub implementations.
library;

export 'platform_dom_browser.dart' if (dart.library.io) 'platform_dom_vm.dart';
''';

  static const projectPlatformDomBrowser = '''/// Browser implementation - re-exports dart:html DOM types.
library;

export 'dart:html';
''';

  static const projectPlatformDomVm = r'''/// Native/AOT platform stub implementations for SSR.
///
/// Provides no-op DOM stubs so the code compiles on native platforms
/// where dart:html (and dart:js_interop) are not available.
library;

/// Stub document object.
class _StubDocument {
  _StubElement? get documentElement => null;
}

/// Stub element for DOM operations.
class _StubElement {
  String textContent = '';
  String id = '';

  String? getAttribute(String name) => null;
}

/// Stub window object.
class _StubWindow {
  static final _StubWindow _instance = _StubWindow._();
  _StubWindow._();
  static _StubWindow get instance => _instance;

  _StubDocument? get document => null;
}

/// Global window stub - used on native/AOT platforms.
dynamic get window => _StubWindow.instance;
''';

  // ===== Hybrid Templates (SSR + Routing + RenderMode) =====

  static const projectPubspecHybrid = '''name: {{name}}
description: {{description}}
version: 0.0.1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  angulardart: '>=9.0.0 <10.0.0'
  angulardart_router: '>=5.0.0 <6.0.0'
  angulardart_server: '>=1.2.0 <2.0.0'

dev_dependencies:
  build_runner: '>=2.16.0 <3.0.0'
  build_web_compilers: '>=4.8.0 <5.0.0'
  angulardart_test: '>=6.0.0 <7.0.0'
  lints: '>=6.0.0 <7.0.0'
  test: '>=1.31.0 <2.0.0'
''';

  static const projectIndexHtmlHybrid = '''<!DOCTYPE html>
<html lang="en" ng-client-context="csr">
<head>
    <meta charset="utf-8">
    <base href="/">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styles.css">
    <script defer src="main.dart.js"></script>
</head>
<body>
    <{{component.selector}}></{{component.selector}}>
</body>
</html>
''';

  static const projectMainDartHybrid = '''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_server/angulardart_server.dart';
// ignore: uri_has_not_been_generated
{{platformDomImportStatement}}
// ignore: uri_has_not_been_generated
import 'package:{{name}}/app_component.template.dart' as app;
// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

@GenerateInjector([routerProviders])
final InjectorFactory appInjector = ng.appInjector\$Injector;

void main() async {
  final isServerRendered =
      (platform_dom.window as dynamic).document.documentElement?.getAttribute('ng-server-context') == 'ssr';

  if (isServerRendered) {
    await hydrateApplication(app.{{component.className}}NgFactory, createInjector: appInjector);
  } else {
    runApp(app.{{component.className}}NgFactory, createInjector: appInjector);
  }
}''';

  static const projectMainServerDartHybridEntry = '''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_server/angulardart_server.dart';

// ignore: uri_has_not_been_generated
import 'package:{{name}}/app_component.template.dart' as app;
// ignore: uri_has_not_been_generated
import 'main.server.template.dart' as ng;

/// Retourne le factory du composant racine pour le rendu server-side.
ComponentFactory<Object> get appComponentFactory =>
    app.{{component.className}}NgFactory;

/// Injecteur applicatif (routing) pour le rendu server-side.
@GenerateInjector([
  routerProviders,
  ClassProvider(PlatformLocation, useClass: ServerPlatformLocation),
  ValueProvider.forToken(appBaseHref, '/'),
])
final InjectorFactory appInjector = ng.appInjector\$Injector;
''';

  static const projectAppComponentDart = '''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';

// ignore: uri_has_not_been_generated
import 'home_component.template.dart' as home;
// ignore: uri_has_not_been_generated
import 'about_component.template.dart' as about;
// ignore: uri_has_not_been_generated
import 'dashboard_component.template.dart' as dashboard;

/// Composant racine avec routing.
@Component(
  selector: '{{component.selector}}',
  templateUrl: 'app_component.html',
  directives: [routerDirectives],
)
class {{component.className}} implements OnInit {
  final Router _router;

  /// Configuration des routes de l'application.
  List<RouteDefinition> routes = [];

  {{component.className}}(this._router);

  @override
  void ngOnInit() {
    _router.onRouteActivated.listen((_) {});

    routes = [
      RouteDefinition(path: '/', component: home.HomeComponentNgFactory, useAsDefault: true),
      RouteDefinition(path: '/about', component: about.AboutComponentNgFactory),
      RouteDefinition(path: '/dashboard', component: dashboard.DashboardComponentNgFactory),
    ];
  }
}
''';

  static const projectAppComponentHtml = '''<nav>
  <a [routerLink]="['/']" routerLinkActive="active">Home</a> |
  <a [routerLink]="['/about']" routerLinkActive="active">About</a> |
  <a [routerLink]="['/dashboard']" routerLinkActive="active">Dashboard</a>
</nav>
<main><router-outlet [routes]="routes"></router-outlet></main>''';

  static const projectHomeComponentDart = '''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_server/angulardart_server.dart';

import 'data_service.dart';

@Component(
  selector: 'home-page',
  templateUrl: 'home_component.html',
  renderMode: RenderMode.server,
  providers: [ClassProvider(DataService)],
)
class HomeComponent implements OnInit {
  final DataService _data;

  HomeComponent(this._data);

  @override
  void ngOnInit() {
    TransferState.set('page', 'home');
  }
}''';

  static const projectHomeComponentHtml = '''<h1>Welcome!</h1>
<p>This is the home page. Rendered on server with hydration.</p>''';

  static const projectAboutComponentDart = r'''import 'package:angulardart/angulardart.dart';

@Component(
  selector: 'about-page',
  templateUrl: 'about_component.html',
)
class AboutComponent {}''';

  static const projectAboutComponentHtml = '''<h1>About</h1>
<p>This page uses automatic render mode (SSR on server, hydration on client).</p>''';

  static const projectDashboardComponentDart = r'''import 'package:angulardart/angulardart.dart';

@Component(
  selector: 'dashboard-page',
  templateUrl: 'dashboard_component.html',
  renderMode: RenderMode.client,
)
class DashboardComponent {}''';

  static const projectDashboardComponentHtml = '''<h1>Dashboard</h1>
<p>This component is never rendered on the server (RenderMode.client).</p>''';

  static const projectDataServiceDart = r'''import 'package:angulardart/angulardart.dart';

@Injectable()
class DataService {
  List<String> getItems() => ['Item 1', 'Item 2', 'Item 3'];
}''';

  static const projectReadmeHybrid = r'''# {{name}}

Application AngularDart avec rendu hybride (SSR + routing + RenderMode).

## Structure

- `web/main.dart` — Entrée client-side (CSR + hydration) + routing
- `web/main.server.dart` — Entrée server-side (SSR)
- `bin/server.dart` — Serveur HTTP pour le rendu SSR
- `lib/home_component.dart` — Composant Home (RenderMode.server)
- `lib/about_component.dart` — Composant About (RenderMode.automatic)
- `lib/dashboard_component.dart` — Composant Dashboard (RenderMode.client)
- `lib/data_service.dart` — Service de données mockées
- `lib/platform_dom*.dart` — Abstraction DOM conditionnelle

## Rendu par composant

| Composant | RenderMode | Comportement |
|---|---|---|
| AppComponent | (défaut: automatic) | SSR si serveur, hydration si client |
| HomeComponent | server | Toujours rendu côté serveur |
| AboutComponent | (défaut: automatic) | SSR si serveur, hydration si client |
| DashboardComponent | client | Jamais rendu côté serveur |

## Utilisation

### Développement (client uniquement)

```bash
dart pub get
dart run build_runner serve
```

### Build SSR + Hybride

```bash
dart pub get
dart run build_runner clean
dart run build_runner build web
# Copier les templates générés vers lib/ et web/
ngdart generate-stubs
dart bin/server.dart
```

Le serveur AngularDart sera disponible sur http://localhost:4000

## Hydration

Lorsqu'un visiteur accède `http://localhost:4000` :

1. Le serveur rend les composants avec RenderMode.server en HTML via SSR
2. Les composants avec RenderMode.client restent vides (placeholders)
3. Le client reçoit le HTML pré-rendu et active l'application avec hydration
4. L'application réutilise le DOM existant (pas de re-rendu)

## TransferState

Les données transférées du serveur vers le client sont stockées dans un `<script>` tag injecté dans le HTML. Côté client, `TransferState.get()` permet de les récupérer après hydration.
''';

  // ===== SSR + SEO Combined Templates =====

  static const projectPubspecSsrSeo = '''name: {{name}}
description: {{description}}
version: 0.0.1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  angulardart: '>=9.0.0 <10.0.0'
  angulardart_router: '>=5.0.0 <6.0.0'
  angulardart_server: '>=1.2.0 <2.0.0'
  angulardart_seo: '>=1.0.0 <2.0.0'

dev_dependencies:
  build_runner: '>=2.16.0 <3.0.0'
  build_web_compilers: '>=4.8.0 <5.0.0'
  angulardart_test: '>=6.0.0 <7.0.0'
  angulardart_prerender: '>=1.0.0 <2.0.0'
  lints: '>=6.0.0 <7.0.0'
  test: '>=1.31.0 <2.0.0'
''';

  static const projectBuildYamlSsrSeo = r'''targets:
  $default:
    builders:
      build_web_compilers|entrypoint:
        generate_for:
          - web/main.dart
          - web/main.server.dart
        release_options:
          dart2js_args:
            - -O4
''';

  static const projectIndexHtmlSsrSeo = '''<!DOCTYPE html>
<html lang="en" ng-client-context="csr">
<head>
    <meta charset="utf-8">
    <base href="/">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styles.css">
    <script defer src="main.dart.js"></script>
</head>
<body>
    <{{component.selector}}></{{component.selector}}>
</body>
</html>
''';

  static const projectMainDartSsrSeo = '''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_seo/angulardart_seo.dart';
import 'package:angulardart_server/angulardart_server.dart';
// ignore: uri_has_not_been_generated
{{platformDomImportStatement}}
// ignore: uri_has_not_been_generated
import 'package:{{name}}/app_component.template.dart' as app;
// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

@GenerateInjector([routerProviders, SeoService, TitleService])
final InjectorFactory appInjector = ng.appInjector\$Injector;

void main() async {
  final isServerRendered =
      (platform_dom.window as dynamic).document.documentElement?.getAttribute('ng-server-context') == 'ssr';

  if (isServerRendered) {
    await hydrateApplication(app.{{component.className}}NgFactory, createInjector: appInjector);
  } else {
    runApp(app.{{component.className}}NgFactory, createInjector: appInjector);
  }
}''';

  static const projectMainServerDartSsrSeoEntry = '''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_seo/angulardart_seo.dart';
import 'package:angulardart_server/angulardart_server.dart';

// ignore: uri_has_not_been_generated
import 'package:{{name}}/app_component.template.dart' as app;
// ignore: uri_has_not_been_generated
import 'main.server.template.dart' as ng;

/// Retourne le factory du composant racine pour le rendu server-side.
ComponentFactory<Object> get appComponentFactory =>
    app.{{component.className}}NgFactory;

/// Injecteur applicatif (routing + SEO) pour le rendu server-side.
@GenerateInjector([
  routerProviders,
  SeoService,
  TitleService,
  ClassProvider(PlatformLocation, useClass: ServerPlatformLocation),
  ValueProvider.forToken(appBaseHref, '/'),
])
final InjectorFactory appInjector = ng.appInjector\$Injector;
''';

  static const projectAppComponentSsrSeoDart = '''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';

// ignore: uri_has_not_been_generated
import 'home_component.template.dart' as home;
// ignore: uri_has_not_been_generated
import 'about_component.template.dart' as about;
// ignore: uri_has_not_been_generated
import 'contact_component.template.dart' as contact;

/// Composant racine avec routing.
@Component(
  selector: '{{component.selector}}',
  templateUrl: 'app_component.html',
  directives: [routerDirectives],
)
class {{component.className}} implements OnInit {
  final Router _router;

  /// Configuration des routes de l'application.
  List<RouteDefinition> routes = [];

  {{component.className}}(this._router);

  @override
  void ngOnInit() {
    _router.onRouteActivated.listen((_) {});

    routes = [
      RouteDefinition(path: '/', component: home.HomeComponentNgFactory, useAsDefault: true),
      RouteDefinition(path: '/about', component: about.AboutComponentNgFactory),
      RouteDefinition(path: '/contact', component: contact.ContactComponentNgFactory),
    ];
  }
}
''';

  static const projectAppComponentSsrSeoHtml = '''<nav>
  <a [routerLink]="['/']" routerLinkActive="active">Home</a> |
  <a [routerLink]="['/about']" routerLinkActive="active">About</a> |
  <a [routerLink]="['/contact']" routerLinkActive="active">Contact</a>
</nav>
<main><router-outlet [routes]="routes"></router-outlet></main>''';

  static const projectSsrSeoHomeComponentDart = r'''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_seo/angulardart_seo.dart';
import 'package:angulardart_server/angulardart_server.dart';

/// Composant d'accueil avec SEO et rendu serveur.
@Component(
  selector: 'home-page',
  template: '<h1>Welcome Home</h1><p>This page has full SSR + SEO support.</p>',
  renderMode: RenderMode.server,
  providers: [ClassProvider(SeoService), ClassProvider(TitleService)],
)
class HomeComponent implements OnInit {
  final SeoService _seo;
  final TitleService _title;

  HomeComponent(this._seo, this._title);

  @override
  void ngOnInit() {
    _title.setTitle('Home - {{description}}');
    _seo.setPageSeo(
      title: 'Home - {{description}}',
      description: 'Welcome to {{description}}. This is the home page with full SSR + SEO support.',
      type: 'website',
      siteName: '{{name}}',
    );
  }
}''';

  static const projectSsrSeoAboutComponentDart = r'''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_seo/angulardart_seo.dart';

/// Composant About avec SEO et rendu automatique.
@Component(
  selector: 'about-page',
  template: '<h1>About Us</h1><p>Learn more about {{description}}.</p>',
  providers: [ClassProvider(SeoService), ClassProvider(TitleService)],
)
class AboutComponent implements OnInit {
  final SeoService _seo;
  final TitleService _title;

  AboutComponent(this._seo, this._title);

  @override
  void ngOnInit() {
    _title.setTitle('About - {{description}}');
    _seo.setPageSeo(
      title: 'About Us - {{description}}',
      description: 'Learn about {{description}}, our AngularDart application with SSR + SEO.',
      type: 'website',
      siteName: '{{name}}',
    );
  }
}''';

  static const projectSsrSeoContactComponentDart = r'''import 'package:angulardart/angulardart.dart';
import 'package:angulardart_seo/angulardart_seo.dart';

/// Composant Contact avec SEO et rendu automatique.
@Component(
  selector: 'contact-page',
  template: '<h1>Contact</h1><p>Get in touch with us.</p>',
  providers: [ClassProvider(SeoService), ClassProvider(TitleService)],
)
class ContactComponent implements OnInit {
  final SeoService _seo;
  final TitleService _title;

  ContactComponent(this._seo, this._title);

  @override
  void ngOnInit() {
    _title.setTitle('Contact - {{description}}');
    _seo.setPageSeo(
      title: 'Contact Us - {{description}}',
      description: 'Contact us about {{description}}. We are here to help.',
      type: 'website',
      siteName: '{{name}}',
    );
  }
}''';

  static const projectPrerenderYamlSsrSeo = '''routes:
  - /
  - /about
  - /contact

timeout: 30000
render_delay_ms: 10000
generate_sitemap: true
generate_robots: true
base_url: 'https://example.com'
''';

   static const projectReadmeSsrSeo = r'''# {{name}}

Application AngularDart avec rendu côté serveur (SSR) + SEO.

## Structure

- `web/main.dart` — Entrée client-side (CSR + hydration) + routing + SEO
- `web/main.server.dart` — Entrée server-side (SSR)
- `bin/server.dart` — Serveur HTTP pour le rendu SSR
- `lib/home_component.dart` — Accueil (RenderMode.server + SeoService)
- `lib/about_component.dart` — À propos (SEO)
- `lib/contact_component.dart` — Contact (SEO)
- `lib/platform_dom*.dart` — Abstraction DOM conditionnelle

## Utilisation

### Développement (client uniquement)

```bash
dart pub get
dart run build_runner serve
```

### Build SSR + SEO

```bash
dart pub get
ngdart generate-stubs
dart run build_runner clean
dart run build_runner build web
dart bin/server.dart
```

### Prerendering (pages statiques pour SEO)

```bash
dart pub get
ngdart generate-stubs
dart run build_runner build web
dart run angulardart_prerender
```

Le serveur AngularDart sera disponible sur http://localhost:4000

## SEO

Chaque page configure ses meta tags via `SeoService` :
- `<title>` dynamique
- Meta description, Open Graph, Twitter Cards
- Canonical URL

Ces données sont automatiquement injectées dans le HTML SSR par `platformServer().renderApplication()`.

## Hydration

1. Le serveur rend les composants avec RenderMode.server en HTML via SSR
2. Les meta tags SEO sont injectés dans le `<head>` du HTML
3. Le client reçoit le HTML pré-rendu et active l'application avec hydration
4. L'application réutilise le DOM existant (pas de re-rendu)
''';
}
