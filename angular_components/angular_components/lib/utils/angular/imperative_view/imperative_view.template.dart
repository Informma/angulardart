// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'imperative_view.dart';

import 'package:angulardart/src/core/linker/component_loader.dart' as _i1;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.dart' as _i2;
import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref1;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref2;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref3;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(AcxImperativeViewUtils, (_i1.ComponentLoader p0, _i2.DomService p1) => AcxImperativeViewUtils.new(p0, p1));
  _ngRef.registerDependencies(AcxImperativeViewUtils, const [
    [_i1.ComponentLoader],
    [_i2.DomService],
  ]);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
}
