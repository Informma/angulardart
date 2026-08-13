// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'title_service.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'dom_apis.template.dart' as _ref0;

import 'package:angulardart/angulardart.template.dart' as _ref1;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(TitleService, () => TitleService.new());
  _ref0.initReflector();
  _ref1.initReflector();
}
