// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'angular_2.dart';

import 'package:angulardart_components/utils/browser/dom_service/dom_service.dart' as _i1;
import 'package:angulardart_components/utils/disposer/disposer.dart' as _i2;
import 'package:angulardart/src/core/zone/ng_zone.dart' as _i3;

import 'package:angulardart_components/src/dom/dom_apis.dart' as _i4;

import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/angulardart.template.dart' as _ref0;
import 'package:angulardart/experimental.template.dart' as _ref1;
import 'package:angulardart_components/src/dom/dom_apis.template.dart' as _ref2;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref3;
import 'package:angulardart_components/utils/browser/dom_service/dom_service.template.dart' as _ref4;
import 'package:angulardart_components/utils/browser/dom_service/dom_service_webdriver_testability.template.dart' as _ref5;
import 'package:angulardart_components/utils/disposer/disposer.template.dart' as _ref6;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerDependencies(createDomService, const [
    [_i1.DomService, _ngRef.SkipSelf(), _ngRef.Optional()],
    [_i2.Disposer, _ngRef.Optional()],
    [_i3.NgZone],
    [_i4.Window],
  ]);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
  _ref6.initReflector();
}
