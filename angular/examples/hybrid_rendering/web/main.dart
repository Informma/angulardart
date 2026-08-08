import 'package:angulardart/angulardart.dart';
import 'package:angulardart_server/angulardart_server.dart';
import 'package:web/web.dart' as web;
// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

void main() async {
  final isServerRendered =
      web.window.document.documentElement?.getAttribute('ng-server-context') == 'ssr';

  if (isServerRendered) {
    await hydrateApplication(ng.AppRootComponentNgFactory);
  } else {
    runApp(ng.AppRootComponentNgFactory);
  }
}

/// Page d'accueil - Sans renderMode (par dfaut)
@Component(
  selector: 'home-page',
  template: '<h1>Welcome Home</h1><p>No renderMode specified</p>',
)
class HomePageComponent {}

/// Composant avec rendu serveur forcé
@Component(
  selector: 'ssr-component',
  template: '<div>Server Rendered Content</div>',
  renderMode: RenderMode.server,
)
class SsrComponent {}

/// Composant racine
@Component(
  selector: 'app-root',
  template: '<h1>Hello World</h1><p>This page demonstrates AngularDart SSR.</p><ssr-component></ssr-component>',
  directives: [SsrComponent],
)
class AppRootComponent {}
