/// Server-side rendering (SSR) and hybrid rendering for AngularDart applications.
///
/// This package provides server-side rendering capabilities similar to
/// Angular Universal, allowing AngularDart components to be rendered as HTML
/// strings on the server before being sent to the client.
///
/// ## Quick Start
///
/// ```dart
/// import 'package:angulardart_server/angulardart_server.dart';
/// import 'app_component.template.dart' as ng;
///
/// void main() async {
///   final server = platformServer();
///   String html = await server.renderComponent(ng.AppComponentNgFactory);
///   print(html);
/// }
/// ```
///
/// See [PlatformServerRef] for the main entry point.
library angulardart_server;

export 'src/platform_server.dart' show platformServer, PlatformServerRef;
export 'package:angulardart_meta/angulardart_meta.dart' show RenderMode;
export 'src/transfer_state.dart' show TransferState;
export 'src/hydration.dart' show hydrateApplication;
export 'src/server_zone.dart' show ServerNgZone;
export 'src/server_location.dart' show ServerPlatformLocation;
