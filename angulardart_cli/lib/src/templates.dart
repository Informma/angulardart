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

  static const projectIndexHtmlSeo = '''
<!DOCTYPE html>
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

  static const projectMainDartSeo = '''
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_seo/angulardart_seo.dart';
import 'package:{{name}}/app_component.template.dart' as ng;
import 'package:{{name}}/main.template.dart' as ng_main;

@GenerateInjector([
  routerProviders,
  ClassProvider(SeoService),
  ClassProvider(TitleService),
])
final InjectorFactory appInjector = ng_main.appInjector\$Injector;

void main() {
  ng.initReflector();
  runApp(ng.AppComponentNgFactory, createInjector: appInjector);
}
''';

  static const projectPrerenderYaml = '''
routes:
  - /
  - /about

timeout: 5000
wait_for_network_idle: true
generate_sitemap: true
generate_robots: true
base_url: 'https://example.com'
''';

  static const seoAppComponent = '''
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';

import 'home_component.template.dart' as home_ng;
import 'about_component.template.dart' as about_ng;

@Component(
  selector: '{{component.selector}}',
  templateUrl: 'app_component.html',
  directives: [
    routerDirectives,
  ],
)
class AppComponent implements OnInit {
  final Router _router;
  List<RouteDefinition> routes = [];

  AppComponent(this._router);

  @override
  void ngOnInit() {
    _router.onRouteActivated.listen((_) {});
    
    routes = [
      RouteDefinition(
        path: '/',
        component: home_ng.createHomeComponentFactory(),
        useAsDefault: true,
      ),
      RouteDefinition(
        path: '/about',
        component: about_ng.createAboutComponentFactory(),
      ),
    ];
  }
}
''';

  static const seoAppComponentHtml = '''
<nav>
  <a [routerLink]="['/']">Home</a>
  <a [routerLink]="['/about']">About</a>
</nav>
<main>
  <router-outlet [routes]="routes"></router-outlet>
</main>
''';

  static const seoHomeComponent = '''
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_seo/angulardart_seo.dart';

@Component(
  selector: 'home-page',
  templateUrl: 'home_component.html',
)
class HomeComponent implements OnInit {
  final SeoService _seo;

  HomeComponent(this._seo);

  @override
  void ngOnInit() {
    _seo.setPageSeo(
      title: 'Home - {{description}}',
      description: 'Welcome to {{description}}',
    );
  }
}
''';

  static const seoHomeComponentHtml = '''{{=<% %>=}}
<h1>Welcome to {{name}}</h1>
<p>This is the home page.</p>
<%={{ }}=%>''';

  static const seoAboutComponent = '''
import 'package:angulardart/angulardart.dart';
import 'package:angulardart_seo/angulardart_seo.dart';

@Component(
  selector: 'about-page',
  templateUrl: 'about_component.html',
)
class AboutComponent implements OnInit {
  final SeoService _seo;

  AboutComponent(this._seo);

  @override
  void ngOnInit() {
    _seo.setPageSeo(
      title: 'About - {{description}}',
      description: 'Learn more about {{description}}',
    );
  }
}
''';

  static const seoAboutComponentHtml = '''{{=<% %>=}}
<h1>About {{name}}</h1>
<p>This is the about page.</p>
<%={{ }}=%>''';
}
