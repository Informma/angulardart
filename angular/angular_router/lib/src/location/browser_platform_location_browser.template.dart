// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'browser_platform_location_browser.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import '../router_types.template.dart' as _ref0;
import 'base_href.template.dart' as _ref1;

import 'package:angulardart/angulardart.template.dart' as _ref2;

import 'platform_location.template.dart' as _ref3;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(BrowserPlatformLocation, () => BrowserPlatformLocation.new());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
}
