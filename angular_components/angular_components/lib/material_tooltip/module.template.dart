// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'module.dart';

import 'package:angulardart_components/src/material_tooltip/tooltip_controller.dart' as _i1;
import 'package:angulardart_components/utils/disposer/disposer.dart' as _i2;
import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/src/material_tooltip/tooltip_controller.template.dart' as _ref1;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref2;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerDependencies(createTooltipController, const [
    [_i1.TooltipController, _ngRef.SkipSelf(), _ngRef.Optional()],
    [_i2.Disposer, _ngRef.Optional()],
  ]);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
}
