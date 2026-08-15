// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'range.dart';

import 'package:quiver/src/time/clock.dart' as _i1;
import 'package:angulardart/src/reflector.dart' as _ngRef;
import 'package:angulardart/di.template.dart' as _ref0;
import 'package:angulardart_components/material_datepicker/proto/date.pb.template.dart' as _ref1;
import 'package:angulardart_components/material_datepicker/proto/date_range.pb.template.dart' as _ref2;
import 'package:angulardart_components/model/date/date.template.dart' as _ref3;

// ignore_for_file: no_leading_underscores_for_library_prefixes
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerDependencies(today, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(yesterday, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(thisWeek, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(lastWeek, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(last7Days, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(last14Days, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(thisMonth, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(lastMonth, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(thisBroadcastMonth, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(lastBroadcastMonth, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(last30Days, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(thisYear, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(lastYear, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(thisQuarter, const [
    [_i1.Clock],
  ]);
  _ngRef.registerDependencies(lastQuarter, const [
    [_i1.Clock],
  ]);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
}
