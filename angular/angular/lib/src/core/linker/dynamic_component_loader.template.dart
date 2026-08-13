// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'dynamic_component_loader.dart';
import 'component_factory.template.dart' as _ref0;
import 'component_loader.template.dart' as _ref1;
import 'component_resolver.template.dart' as _ref2;

import 'package:angulardart/src/di/injector.template.dart' as _ref3;
import 'package:angulardart/src/utilities.template.dart' as _ref4;

import 'view_container_ref.template.dart' as _ref5;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
}
