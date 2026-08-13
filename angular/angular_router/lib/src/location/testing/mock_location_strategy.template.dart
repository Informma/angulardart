// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'mock_location_strategy.dart';

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_router/src/location/location_strategy.template.dart' as _ref1;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(MockLocationStrategy, () => MockLocationStrategy.new());
  _ref0.initReflector();
  _ref1.initReflector();
}
