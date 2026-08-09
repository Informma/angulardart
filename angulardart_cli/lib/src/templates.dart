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
      RouteDefinition(path: '/', component: ng.createHomeComponentFactory(), useAsDefault: true),
      RouteDefinition(path: '/about', component: ng.createAboutComponentFactory()),
      RouteDefinition(path: '/contact', component: ng.createContactComponentFactory()),
    ];
    _router.navigate('/');
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
  shelf: '>=1.0.0 <2.0.0'
  angulardart_server: '>=1.2.0 <2.0.0'
  web: '>=0.5.0 <1.0.0'

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
import 'package:web/web.dart' as web;
// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

void main() async {
  final isServerRendered =
      web.window.document.documentElement?.getAttribute('ng-server-context') == 'ssr';

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

  static const projectMainServerDart = '''import 'dart:async';
import 'dart:io';

import 'package:angulardart_server/angulardart_server.dart';
// ignore: uri_has_not_been_generated
import '../web/main.template.dart' as ng;

/// Point d'entre du serveur HTTP SSR.
///
/// Compilez avec : dart run build_runner build web/main.server.dart
/// Puis lancez : dart bin/server.dart
Future<void> main() async {
  final server = platformServer();

  await HttpServer.bind('localhost', 4000).then((httpServer) {
    print('Serveur SSR angulardart en cours d\\'exécution sur http://localhost:4000');

    httpServer.listen((request) async {
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
import '../web/main.template.dart' as ng;

/// Point d'entre du serveur HTTP SSR.
///
/// Compilez avec : dart run build_runner build web
/// Puis lancez : dart bin/server.dart
Future<void> main() async {
  final server = platformServer();

  await HttpServer.bind('localhost', 4000).then((httpServer) {
    print('Serveur SSR angulardart en cours d\\'exécution sur http://localhost:4000');

    httpServer.listen((request) async {
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
# Copier les templates générés vers web/ (workaround pour bug build_runner)
for f in .dart_tool/build/generated/*/web/*.template.dart; do cp "\$f" web/ 2>/dev/null || true; done
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
}
