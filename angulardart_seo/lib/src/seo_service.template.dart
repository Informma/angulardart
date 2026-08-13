// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'seo_service.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;

import 'dom_apis.template.dart' as _ref0;
import 'meta_tag.template.dart' as _ref1;

import 'package:angulardart/angulardart.template.dart' as _ref2;
import 'package:angulardart_server/angulardart_server.template.dart' as _ref3;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(SeoService, () => SeoService.new());
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
}
