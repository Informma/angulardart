// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'module.dart';

import 'package:angulardart_components/src/dom/dom_apis.dart' as _i1;

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref1;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerDependencies(getLocation, const [
    [_i1.Window],
  ]);
  _ref0.initReflector();
  _ref1.initReflector();
}
