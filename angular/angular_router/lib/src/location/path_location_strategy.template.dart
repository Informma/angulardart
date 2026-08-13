// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'path_location_strategy.dart';

import 'package:angulardart_router/src/location/platform_location.dart' as _i1;
import 'package:angulardart_meta/src/di_tokens.dart' as _i2;
import 'package:angulardart/src/reflector.dart' as _ngRef;

import '../router_types.template.dart' as _ref0;
import 'location.template.dart' as _ref1;
import 'location_strategy.template.dart' as _ref2;

import 'package:angulardart/angulardart.template.dart' as _ref3;

import 'platform_location.template.dart' as _ref4;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(PathLocationStrategy, (_i1.PlatformLocation p0, String? p1) => PathLocationStrategy.new(p0, p1));
  _ngRef.registerDependencies(PathLocationStrategy, const [
    [_i1.PlatformLocation],
    [_ngRef.Inject(_i2.OpaqueToken<String>('appBaseHref')), _ngRef.Optional()],
  ]);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
}
