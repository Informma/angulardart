import 'package:angulardart/angulardart.dart';
import 'package:angulardart_server/angulardart_server.dart';
import 'package:examples_hello_world_ssr/platform_dom.dart' as platform_dom;
// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

void main() async {
  final isServerRendered =
      (platform_dom.window as dynamic).document.documentElement?.getAttribute('ng-server-context') == 'ssr';

  if (isServerRendered) {
    await hydrateApplication(ng.HelloWorldComponentNgFactory);
  } else {
    runApp(ng.HelloWorldComponentNgFactory);
  }
}

@Component(
  selector: 'hello-world',
  template: '<h1>Hello World</h1><p>This page demonstrates AngularDart SSR.</p>',
)
class HelloWorldComponent {}
