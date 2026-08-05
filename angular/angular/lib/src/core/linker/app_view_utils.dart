import 'package:web/web.dart' as web;

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
web.DocumentFragment createTrustedHtml(String trustedHtml) {
  final template =
      web.document.createElement('template') as web.HTMLTemplateElement;
  template.innerHTML = trustedHtml.js;
  return template.content;
}
