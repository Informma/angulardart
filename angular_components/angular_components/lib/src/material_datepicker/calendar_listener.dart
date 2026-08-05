// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'package:angulardart_components/material_datepicker/calendar.dart';
import 'package:angulardart_components/model/date/date.dart';
import 'package:angulardart_components/model/observable/observable.dart';
import 'package:angulardart_components/utils/disposer/disposer.dart';

/// Handles input events on the calendar.
class CalendarListener implements Disposable {
  void onClick(Date day) {}
  void onMouseDown(Date day) {}
  void onMouseMove(Date day) {}
  void onMouseLeave(Date day) {}
  void onKeypress() {}
  @override
  void dispose() {}

  const CalendarListener.noop();
  factory CalendarListener.singleDate(
      ObservableReference<CalendarState> model) = _DateListener;
  factory CalendarListener.dateRange(ObservableReference<CalendarState> model,
      {required bool movingStartMaintainsLength}) = _RangeListener;
}

/// Listens for clicks on single dates, and selects those.
class _DateListener implements CalendarListener {
  final ObservableReference<CalendarState> model;
  _DateListener(this.model);

  @override
  void onClick(Date day) {
    model.value = model.value.setCurrentSelection(day, day);
  }

  @override
  void onMouseMove(Date day) {
    model.value = model.value.updateCurrentPreview(day);
  }

  @override
  void onKeypress() {
    // TODO(google): Keyboard interaction
  }

  @override
  void onMouseDown(Date day) {}
  @override
  void onMouseLeave(Date day) {}
  @override
  void dispose() {}
}

/// The current state of drag operations in the date-range picker.
///
/// `canPreview`: No drag. Preview selection on mouseover, dismiss on mouseleave
/// `dragging`: Currently dragging out a selection; will exit on mouseup.
///
/// The `pendingGrabOrClick` and `pendingDragOrClick` states wait to determine
/// whether the latest mousedown event was the start of a click or a drag.
enum _DragState { canPreview, pendingGrabOrClick, pendingDragOrClick, dragging }

/// Listens for date range selections.
class _RangeListener implements CalendarListener {
  final ObservableReference<CalendarState> model;
  final bool movingStartMaintainsLength;
  final _disposer = Disposer.multi();

  _RangeListener(this.model, {required this.movingStartMaintainsLength}) {
    _initSelectionPreview();
    _disposer.addStreamSubscription(model.stream.listen((s) {
      if (s.currentSelection != previewedSelection) {
        _initSelectionPreview();
        _consecutiveClicks = 0;
      } else if (s.cause == CausedBy.external || s.cause == CausedBy.drag) {
        _consecutiveClicks = 0;
      }
    }));
  }

  _DragState state = _DragState.canPreview;

  Date? dragAnchor;

  String? previewedSelection;

  String? selectionPendingGrab;

  int _consecutiveClicks = 0;

  bool _datesEqual(Date a, Date b) =>
      datesEqualAtResolution(a, b, model.value.resolution);

  void _initSelectionPreview() {
    previewedSelection = model.value.currentSelection;
    _consecutiveClicks = 0;
  }

  bool _grabExistingRange(Date d) {
    if (state != _DragState.canPreview) {
      return false;
    }

    for (var selection in model.value.selections) {
      if (selection.start == null || selection.end == null) {
        continue;
      }
      if (_datesEqual(d, selection.start!)) {
        state = _DragState.pendingGrabOrClick;
        dragAnchor = selection.end;
        selectionPendingGrab = selection.id;
        return true;
      }
      if (_datesEqual(d, selection.end!)) {
        state = _DragState.pendingGrabOrClick;
        dragAnchor = selection.start;
        selectionPendingGrab = selection.id;
        return true;
      }
    }
    return false;
  }

  void confirmPreviewedSelection() {
    if (model.value.preview == null) return;

    _consecutiveClicks++;
    model.value = model.value.confirmPreview(
        confirmRange: _consecutiveClicks >= 2,
        movingStartMaintainsLength: movingStartMaintainsLength);
  }

  @override
  void onMouseDown(Date day) {
    if (!_grabExistingRange(day)) {
      state = _DragState.pendingDragOrClick;
      dragAnchor = day;
    }

    web.EventListener? listener;
    listener = (web.Event _) {
      if (state == _DragState.dragging) {
        model.value = CalendarState(
            selections: model.value.selections,
            currentSelection: model.value.currentSelection,
            cause: CausedBy.rangeConfirm,
            resolution: model.value.resolution);
      }

      state = _DragState.canPreview;
      dragAnchor = null;
    }.toJS;
    web.document.addEventListener('mouseup', listener);
    _disposer.addFunction(() {
      web.document.removeEventListener('mouseup', listener);
    });
  }

  @override
  void onClick(Date day) {
    if (model.value.has(model.value.currentSelection!)) {
      updateActiveDragOrPreview(day);
      confirmPreviewedSelection();
    } else {
      model.value = model.value.setCurrentSelection(day, day,
          cause: CausedBy.endpointConfirm, previewAnchoredAtStart: true);
      _consecutiveClicks = 1;
    }

    state = _DragState.canPreview;
    dragAnchor = null;
  }

  @override
  void onMouseMove(Date day) {
    updateActiveDragOrPreview(day);
  }

  void updateActiveDragOrPreview(Date day) {
    if (day != dragAnchor && state != _DragState.canPreview) {
      if (state == _DragState.pendingGrabOrClick &&
          model.value.has(model.value.currentSelection!)) {
        assert(selectionPendingGrab != null);
        model.value = model.value.select(selectionPendingGrab!);
        selectionPendingGrab = null;
      }
      state = _DragState.dragging;
    }

    model.value = (state == _DragState.dragging)
        ? model.value.updateDrag(day, dragAnchor!)
        : model.value.updateCurrentPreview(day);
  }

  @override
  void onMouseLeave(Date day) {
    if (state == _DragState.canPreview) {
      model.value = model.value.cancelCurrentPreview();
    }
  }

  @override
  void onKeypress() {
    // TODO(google): Keyboard interaction
  }

  @override
  void dispose() => _disposer.dispose();
}
