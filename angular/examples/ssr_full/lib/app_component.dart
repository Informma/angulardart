import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';

// ignore: uri_has_not_been_generated
import 'home_component.template.dart' as home;
// ignore: uri_has_not_been_generated
import 'about_component.template.dart' as about;
// ignore: uri_has_not_been_generated
import 'contact_form_component.template.dart' as contact;
// ignore: uri_has_not_been_generated
import 'dashboard_component.template.dart' as dashboard;

/// Composant racine avec routing.
///
/// Démo : utilise angulardart_router pour naviguer entre les pages.
@Component(
  selector: 'app-root',
  templateUrl: 'app_component.html',
  directives: [routerDirectives],
)
class AppComponent implements OnInit {
  final Router _router;

  /// Configuration des routes de l'application.
  List<RouteDefinition> routes = [];

  AppComponent(this._router);

  @override
  void ngOnInit() {
    // Écoute les changements de route (pour tracking futur).
    _router.onRouteActivated.listen((_) {});

    routes = [
      RouteDefinition(path: '/', component: home.HomePageComponentNgFactory, useAsDefault: true),
      RouteDefinition(path: '/about', component: about.AboutPageComponentNgFactory),
      RouteDefinition(path: '/contact', component: contact.ContactPageComponentNgFactory),
      RouteDefinition(path: '/dashboard', component: dashboard.DashboardPageComponentNgFactory),
    ];

    _router.navigate('/');
  }
}
