import 'package:angulardart/angulardart.dart';
import 'package:angulardart_router/angulardart_router.dart';
import 'package:angulardart_server/angulardart_server.dart';
import 'package:examples_ssr_full/platform_dom.dart' as platform_dom;

// ignore: uri_has_not_been_generated
import 'package:examples_ssr_full/app_component.template.dart' as app;
// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

@GenerateInjector([routerProviders])
final InjectorFactory appInjector = ng.appInjector$Injector;

void main() async {
  final isServerRendered =
      (platform_dom.window as dynamic).document.documentElement?.getAttribute('ng-server-context') == 'ssr';

  if (isServerRendered) {
    await hydrateApplication(app.AppComponentNgFactory, createInjector: appInjector);
  } else {
    runApp(app.AppComponentNgFactory, createInjector: appInjector);
  }
}
