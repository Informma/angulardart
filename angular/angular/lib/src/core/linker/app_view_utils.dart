import 'linker_dom_apis.dart' if (dart.library.io) 'linker_dom_apis_vm.dart';

import '../../runtime/js_interop.dart';

import 'package:angulardart/src/core/application_tokens.dart' show APP_ID;
import 'package:angulardart/src/runtime/dom_events.dart' show EventManager;

/// Application wide view utilities.
late AppViewUtils appViewUtils;

/// Utilities to create unique RenderComponentType instances for AppViews and
/// provide access to root dom renderer.
class AppViewUtils {
  final String appId;
  final EventManager eventManager;

  AppViewUtils(
    @APP_ID this.appId,
    this.eventManager,
  );
}

/// Creates a document fragment from [trustedHtml].
LinkerDocumentFragment createTrustedHtml(String trustedHtml) {
  final template =
      linkerDocument.createElement('template') as LinkerHTMLTemplateElement;
  template.innerHTML = trustedHtml.js;
  return template.content;
}
