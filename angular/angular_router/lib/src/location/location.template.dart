// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'location.dart';

import 'package:angulardart_router/src/location/location_strategy.dart' as _i1;
import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'location_strategy.template.dart' as _ref0;

import 'package:angulardart/angulardart.template.dart' as _ref1;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(Location, (_i1.LocationStrategy p0) => Location.new(p0));
  _ngRef.registerDependencies(Location, const [
    [_i1.LocationStrategy],
  ]);
  _ref0.initReflector();
  _ref1.initReflector();
}
