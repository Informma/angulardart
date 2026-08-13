// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'application_ref.dart';
import 'change_detection/host.template.dart' as _ref0;
import 'linker/component_factory.template.dart' as _ref1;

import 'package:angulardart/src/core/exception_handler.template.dart' as _ref2;
import 'package:angulardart/src/devtools.template.dart' as _ref3;
import 'package:angulardart/src/di/injector.template.dart' as _ref4;
import 'package:angulardart/src/runtime/dom_apis.template.dart' as _ref5;
import 'package:angulardart/src/runtime/render_factory.template.dart' as _ref6;
import 'package:angulardart/src/testability.template.dart' as _ref7;
import 'package:angulardart/src/utilities.template.dart' as _ref8;

import 'zone/ng_zone.template.dart' as _ref9;

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
  _ref6.initReflector();
  _ref7.initReflector();
  _ref8.initReflector();
  _ref9.initReflector();
}
