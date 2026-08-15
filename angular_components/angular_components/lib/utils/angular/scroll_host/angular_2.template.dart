// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'angular_2.dart';

import 'package:angulardart_components/utils/browser/dom_service/dom_service.dart' as _i1;
import 'package:angulardart/src/core/zone/ng_zone.dart' as _i2;
import 'package:angulardart_components/src/utils/angular/scroll_host/gestures.dart' as _i3;

import 'package:angulardart_components/src/dom/dom_apis.dart' as _i4;

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref1;
import 'package:angulardart_components/src/utils/angular/scroll_host/scroll_host_base.template.dart' as _ref2;
import 'package:angulardart_components/src/utils/angular/scroll_host/scroll_host_interface.template.dart' as _ref3;
import 'package:angulardart_components/utils/angular/scroll_host/interface.template.dart' as _ref4;
import 'package:angulardart_components/utils/browser/dom_service/angular_2.template.dart' as _ref5;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerFactory(WindowScrollHost, (_i1.DomService p0, _i2.NgZone p1, _i3.GestureListenerFactory p2, _i4.Window p3) => WindowScrollHost.new(p0, p1, p2, p3));
  _ngRef.registerDependencies(WindowScrollHost, const [
    [_i1.DomService],
    [_i2.NgZone],
    [_i3.GestureListenerFactory],
    [_i4.Window],
  ]);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
}
