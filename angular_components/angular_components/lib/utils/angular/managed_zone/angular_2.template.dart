// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'angular_2.dart';

import 'package:angulardart/src/core/zone/ng_zone.dart' as _i1;
import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/src/utils/angular/managed_zone/managed_zone.template.dart' as _ref1;
import 'package:angulardart_components/src/utils/angular/managed_zone/managed_zone.template.dart' as _ref2;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(Angular2ManagedZone, (_i1.NgZone p0) => Angular2ManagedZone.new(p0));
  _ngRef.registerDependencies(Angular2ManagedZone, const [
    [_i1.NgZone],
  ]);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
}
