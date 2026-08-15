// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'gestures.dart';

import 'package:quiver/src/time/clock.dart' as _i1;
import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref1;
import 'package:angulardart_components/src/utils/angular/scroll_host/scroll_host_event_impl.template.dart' as _ref2;
import 'package:angulardart_components/src/utils/angular/scroll_host/scroll_host_interface.template.dart' as _ref3;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref4;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(GestureListenerFactory, (_i1.Clock p0) => GestureListenerFactory.new(p0));
  _ngRef.registerDependencies(GestureListenerFactory, const [
    [_i1.Clock],
  ]);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
}
