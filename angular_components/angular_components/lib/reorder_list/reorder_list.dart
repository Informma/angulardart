// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:js_interop';
import 'dart:math';

import 'package:web/web.dart' as web;

import 'package:angulardart/angulardart.dart';
import 'package:quiver/iterables.dart' show range;
import 'package:angulardart_components/reorder_list/reorder_events.dart';
import 'package:angulardart_components/utils/disposer/disposer.dart';
import 'package:angulardart_components/utils/keyboard/keyboard.dart';

export 'reorder_events.dart';

const int _keyCodeUp = 38;
const int _keyCodeDown = 40;
const int _keyCodeDelete = 46;
const int _keyCodeNumDelete = 110;
const int _keyCodeBackspace = 8;

@Component(
  selector: 'reorder-list',
  templateUrl: 'reorder_list.html',
  styleUrls: ['reorder_list.scss.css'],
  visibility: Visibility.all, // injected
)
class ReorderListComponent implements OnDestroy {
  @HostBinding('class')
  static const hostClass = 'themeable';

  @HostBinding('attr.role')
  static const hostRole = 'list';

  static final itemSelectedCssClass = 'item-selected';
  final _disposer = Disposer.oneShot();

  @Output()
  Stream<ReorderEvent> get reorder => _reorder.stream;
  final _reorder = StreamController<ReorderEvent>.broadcast(sync: true);

  @Output()
  Stream<ReorderEvent> get reorderAttempt => _reorderAttempt.stream;
  final _reorderAttempt = StreamController<ReorderEvent>.broadcast(sync: true);

  @Output()
  Stream<int> get delete => _delete.stream;
  final _delete = StreamController<int>.broadcast(sync: true);

  @Output()
  Stream<ItemSelectionEvent> get itemSelectionChanged =>
      _itemSelectionChanged.stream;
  final _itemSelectionChanged =
      StreamController<ItemSelectionEvent>.broadcast(sync: true);

  @Output()
  Stream<ReorderEvent> get reorderProgress => _reorderProgress.stream;
  final _reorderProgress = StreamController<ReorderEvent>.broadcast(sync: true);

  final NgZone _ngZone;

  @HostBinding('class.vertical')
  @Input()
  bool verticalItems = true;

  @HostBinding('class.multiselect')
  @Input()
  bool multiSelect = false;

  late Map<web.HTMLElement, web.HTMLElement> _items;
  final Map<web.HTMLElement, List<void Function()>> _subscriptions = <web.HTMLElement, List<void Function()>>{};
  final Map<web.HTMLElement, void Function()?> _dragSubscriptions = <web.HTMLElement, void Function()?>{};
  late List<int> _curTransformY;
  late List<int> _itemSizes;
  bool _reorderActive = false;
  int _moveSourceIndex = -1;
  int _currentMoveIndex = -1;
  late web.HTMLElement _dragSourceElement;
  final List<int> _selectedElementIndexes = [];
  int? _pivotItemIndex;

  @ViewChild('placeholder')
  late web.HTMLElement placeholder;

  ReorderListComponent(this._ngZone);

  @ContentChildren(ReorderItemDirective)
  set items(List<ReorderItemDirective> value) {
    _items = { for (var e in value) e.handleElement : e.element };
    _refreshItems();
  }

  void _refreshItems() {
    final newElements = _handleElements.toSet();
    Set<web.HTMLElement> currentlyTracked = Set.from(_subscriptions.keys);
    for (web.HTMLElement tracked in currentlyTracked) {
      if (!newElements.contains(tracked)) {
        unTrack(tracked);
      }
    }
    for (web.HTMLElement newElement in newElements) {
      if (!currentlyTracked.contains(newElement)) {
        track(newElement);
      }
    }
    if (multiSelect) _selectedElementIndexes.clear();
  }

  @override
  void ngOnDestroy() {
    _unTrackAll();
    _disposer.dispose();
  }

  void _unTrackAll() {
    var keys = List<web.HTMLElement>.from(_subscriptions.keys);
    for (web.HTMLElement element in keys) {
      unTrack(element);
    }
  }

  void _moveItem(int fromIndex, int toIndex) {
    List contents = _reorderElements;
    int leftSide = 0;
    int rightSide = 0;
    int childCount = contents.length;
    if (childCount > 0) {
      final parentRect = (contents.first.parentNode as web.HTMLElement).getBoundingClientRect();
      leftSide = parentRect.left.toInt();
      rightSide = parentRect.right.toInt();
    }
    int? nextOffset;
    int upperStackSize = 0;
    var moveRight = true;
    for (int i = 0; i < childCount; i++) {
      int offset = 0;
      web.HTMLElement e = contents[i];
      if (i == _moveSourceIndex) {
        offset = -8000;
      } else if (_moveSourceIndex < i && i <= toIndex) {
        offset -= _itemSizes[_moveSourceIndex];
      } else if (toIndex <= i && i < _moveSourceIndex) {
        offset += _itemSizes[_moveSourceIndex];
      }
      if ((i != _moveSourceIndex && i < toIndex) ||
          (i == toIndex && toIndex > _moveSourceIndex)) {
        upperStackSize += _itemSizes[i];
      }
      if (offset != _curTransformY[i]) {
        _curTransformY[i] = offset;
        if (e.style.transition != 'transform:all 0.2s ease-out') {
          e.style.transition = 'all 0.2s ease-out';
        }

        if (!verticalItems && offset != -8000) {
          nextOffset = _horizontalTransformHandler(
              e,
              i == 0 ? null : contents[i - 1],
              offset,
              nextOffset,
              leftSide,
              rightSide);
          if (i == toIndex) {
            moveRight = offset > 0;
          }
        } else {
          e.style.transform = offset == 0 ? '' : 'translate(0,${offset}px)';
        }
      }
    }

    final draggedElement = _items[_dragSourceElement]!;
    if (verticalItems) {
      final draggedRect = draggedElement.getBoundingClientRect();
      placeholder.style
        ..height = "${draggedRect.height}px"
        ..width = "${draggedRect.width}px"
        ..top = "${upperStackSize}px";
    } else {
      web.HTMLElement e = contents[toIndex];
      final eRect = e.getBoundingClientRect();
      final draggedRect = draggedElement.getBoundingClientRect();
      var left = moveRight
          ? eRect.left
          : eRect.right - draggedRect.width;

      placeholder.style
        ..height = "${draggedRect.height}px"
        ..width = "${draggedRect.width}px"
        ..top = "${eRect.top}px"
        ..left = "${left}px";
    }
    _reorderAttempt.add(_createReorderEvent(_moveSourceIndex, toIndex));
  }

  int _horizontalTransformHandler(web.HTMLElement e, web.HTMLElement? prev, int offset,
      int? nextOffset, int leftSide, int rightSide) {
    final eRect = e.getBoundingClientRect();
    if (nextOffset != null) {
      if (offset.sign == nextOffset.sign) {
        offset = nextOffset;
      } else {
        offset += nextOffset;
      }
    }
    if (eRect.right + offset > rightSide) {
      nextOffset = eRect.width.toInt();
      e.style.transform = 'translate(${-eRect.left + leftSide}px,'
          '${eRect.height}px)';
    } else if (eRect.left + offset < leftSide) {
      if (prev != null) {
        final prevRect = prev.getBoundingClientRect();
        if (eRect.width < prevRect.right) {
          nextOffset = -eRect.width.toInt();
          e.style.transform = 'translate('
              '${prevRect.right - leftSide + offset}px,'
              '${-eRect.height}px)';
        } else {
          nextOffset = 0;
        }
      } else {
        nextOffset = 0;
      }
    } else {
      e.style.transform = 'translate(${offset}px,0px)';
    }
    return nextOffset ?? 0;
  }

  void _addEventListener(web.HTMLElement element, String eventType, web.EventListener listener) {
    element.addEventListener(eventType, listener);
    _subscriptions.putIfAbsent(element, () => []);
    _subscriptions[element]!.add(() => element.removeEventListener(eventType, listener));
  }

  void track(web.HTMLElement element) {
    element.draggable = true;

    web.EventListener dragStartListener = (web.Event e) {
      final dragEvent = e as web.DragEvent;
      dragEvent.dataTransfer!.setData("Text", element.id);
      dragEvent.dataTransfer!.effectAllowed = "copyMove";
      _onDragStart(dragEvent);
    }.toJS;
    _addEventListener(element, 'dragstart', dragStartListener);

    web.EventListener dragEndListener = (web.Event e) {
      _onDragEnd(e as web.MouseEvent);
    }.toJS;
    _addEventListener(element, 'dragend', dragEndListener);

    web.EventListener keyDownListener = (web.Event e) {
      _onKeyDown(e as web.KeyboardEvent, element);
    }.toJS;
    _addEventListener(element, 'keydown', keyDownListener);

    web.EventListener dragOverListener = (web.Event e) {
      _onDragOver(e as web.MouseEvent, element);
    }.toJS;
    element.addEventListener('dragover', dragOverListener);
    _dragSubscriptions[element] = () => element.removeEventListener('dragover', dragOverListener);

    if (multiSelect) {
      web.EventListener clickListener = (web.Event e) {
        _onClick(e as web.MouseEvent, element);
      }.toJS;
      _addEventListener(element, 'click', clickListener);
    }
  }

  void unTrack(web.HTMLElement element) {
    var subs = _subscriptions[element];
    if (subs != null) {
      for (var cleanup in subs) {
        cleanup();
      }
    }
    _subscriptions.remove(element);

    if (_dragSubscriptions[element] != null) {
      _dragSubscriptions[element]!();
    }
    _dragSubscriptions.remove(element);
  }

  List<web.HTMLElement> get _handleElements => _items.keys.toList();
  List<web.HTMLElement> get _reorderElements => _items.values.toList();

  void _onDragStart(web.MouseEvent e) {
    if (multiSelect) {
      int index = _getIndex(e.currentTarget as web.HTMLElement);
      if (!_selectedElementIndexes.contains(index)) {
        _clearSelection();
        _selectedElementIndexes.add(index);
        _notifySelectionChange();
      }
    }
    _dragSourceElement = e.currentTarget as web.HTMLElement;
    _dragSourceElement.classList.add('reorder-list-dragging-active');
    var contents = _reorderElements;
    int childCount = contents.length;
    _moveSourceIndex = _handleElements.indexOf(_dragSourceElement);
    _curTransformY = List<int>.filled(childCount, 0);
    _itemSizes = List<int>.filled(childCount, 0);
    for (int i = 0; i < childCount; i++) {
      _itemSizes[i] = _computeItemSize(contents[i]);
    }
    _reorderActive = true;
    _currentMoveIndex = _moveSourceIndex;
    _moveItem(_currentMoveIndex, _currentMoveIndex);
  }

  int _computeItemSize(web.HTMLElement elem) {
    final cssStyle = web.window.getComputedStyle(elem);
    if (verticalItems) {
      final rect = elem.getBoundingClientRect();
      return (rect.height +
          _parsePx(cssStyle.marginBottom) +
          _parsePx(cssStyle.marginTop)).toInt();
    } else {
      final rect = elem.getBoundingClientRect();
      return (rect.width +
          _parsePx(cssStyle.marginLeft) +
          _parsePx(cssStyle.marginRight)).toInt();
    }
  }

  int _parsePx(String style) => int.parse(style.replaceAll('px', ''));

  void _onDragEnd(web.MouseEvent e) {
    e.stopPropagation();

    _reorderActive = false;
    _dragSourceElement.classList.remove('reorder-list-dragging-active');
    _reorderActive = false;
    _resetChildren();

    _reorder.add(_createReorderEvent(_moveSourceIndex, _currentMoveIndex));
    if (multiSelect) {
      _clearSelection();
      _notifySelectionChange();
    }
  }

  void _onKeyDown(web.KeyboardEvent e, web.HTMLElement element) {
    if ((e.keyCode == _keyCodeUp || e.keyCode == _keyCodeDown) &&
        modifiersKeysFor(e)) {
      int index = _getIndex(element);
      if (index == -1) {
        return;
      }

      int newIndex = _getNewIndex(e.keyCode, index);
      _reorderElements[newIndex].focus();

      e.preventDefault();
      e.stopPropagation();
    } else if ((e.keyCode == _keyCodeUp || e.keyCode == _keyCodeDown) &&
        modifiersKeysFor(e, shiftKey: true)) {
      int index = _getIndex(element);
      if (index == -1) {
        return;
      }

      int newIndex = _getNewIndex(e.keyCode, index);

      if (newIndex != index) {
        _reorder.add(_createReorderEvent(index, newIndex));
        _ngZone.onEventDone.first.then((_) {
          var element = _reorderElements[newIndex];
          if (multiSelect) {
            _clearSelection();
            element.classList.add(itemSelectedCssClass);
            _selectedElementIndexes.add(newIndex);
            _notifySelectionChange();
          }
          element.focus();
        });
      }
      e.preventDefault();
      e.stopPropagation();
    } else if ((e.keyCode == _keyCodeDelete ||
            e.keyCode == _keyCodeNumDelete ||
            e.keyCode == _keyCodeBackspace) &&
        modifiersKeysFor(e)) {
      if ((e.target as web.HTMLElement) != element) return;
      int index = _getIndex(element);
      if (index == -1) {
        return;
      }
      removeAt(index);
      e.stopPropagation();
      e.preventDefault();
    }
  }

  void _onClick(web.MouseEvent e, web.HTMLElement element) {
    int index = _getIndex(element);
    if (index == -1) {
      return;
    }

    if (e.shiftKey) {
      _handleShift(index);
    } else if (e.ctrlKey || e.metaKey) {
      _handleCtrl(index, element);
    } else {
      if (!_selectedElementIndexes.contains(index)) {
        _clearSelection();
        _selectedElementIndexes.add(index);
      }
      _pivotItemIndex = index;
    }
    _notifySelectionChange();
  }

  void removeAt(int index) {
    _delete.add(index);
    _ngZone.onEventDone.first.then((_) {
      if (index < _reorderElements.length) {
        _reorderElements[index].focus();
      } else if (_reorderElements.isNotEmpty) {
        _reorderElements[_reorderElements.length - 1].focus();
      }
    });
  }

  void _notifySelectionChange() {
    var sources = List<int>.from(_selectedElementIndexes);
    sources.sort();
    _itemSelectionChanged.add(ItemSelectionEvent(sources));
  }

  void _handleCtrl(int index, web.HTMLElement element) {
    _pivotItemIndex = index;

    if (element.classList.contains(itemSelectedCssClass)) {
      element.classList.remove(itemSelectedCssClass);
      _selectedElementIndexes.remove(index);
    } else {
      element.classList.add(itemSelectedCssClass);
      _selectedElementIndexes.add(index);
    }
  }

  void _handleShift(int index) {
    _pivotItemIndex ??= index;

    var indexes = List<int>.from(
        range(min(_pivotItemIndex!, index), max(_pivotItemIndex!, index)));
    indexes.add(max(_pivotItemIndex!, index));
    _clearSelection();
    var allElements = _reorderElements;
    for (var index in indexes) {
      allElements[index].classList.add(itemSelectedCssClass);
      _selectedElementIndexes.add(index);
    }
  }

  void _clearSelection() {
    var allElements = _reorderElements;
    for (var index in _selectedElementIndexes) {
      allElements[index].classList.remove(itemSelectedCssClass);
    }
    _selectedElementIndexes.clear();
  }

  int _getNewIndex(int keyCode, int index) {
    if (keyCode == _keyCodeUp && index > 0) {
      return index - 1;
    } else if (keyCode == _keyCodeDown && index < _reorderElements.length - 1) {
      return index + 1;
    } else {
      return index;
    }
  }

  void _onDragOver(web.MouseEvent event, web.HTMLElement element) {
    if (_dragSourceElement == element) {
      return;
    }

    var elementIndex = _getIndex(element);

    var moveTargetIndex = elementIndex;
    if (_currentMoveIndex < _moveSourceIndex &&
        elementIndex >= _currentMoveIndex &&
        elementIndex < _moveSourceIndex) {
      moveTargetIndex++;
    }
    if (_currentMoveIndex > _moveSourceIndex &&
        elementIndex <= _currentMoveIndex &&
        elementIndex > _moveSourceIndex) {
      moveTargetIndex--;
    }

    if (_currentMoveIndex != moveTargetIndex &&
        _reorderActive &&
        moveTargetIndex != -1) {
      _moveItem(_currentMoveIndex, moveTargetIndex);
      _currentMoveIndex = moveTargetIndex;

      _reorderProgress
          .add(_createReorderEvent(_moveSourceIndex, _currentMoveIndex));

      _dragSubscriptions[element]!();
      _dragSubscriptions[element] = null;
      Future.delayed(Duration(milliseconds: 250), () {
        if (_subscriptions[element] != null) {
          web.EventListener dragOverListener = (web.Event e) {
            _onDragOver(e as web.MouseEvent, element);
          }.toJS;
          element.addEventListener('dragover', dragOverListener);
          _dragSubscriptions[element] = () => element.removeEventListener('dragover', dragOverListener);
        }
      });
    }
  }

  int _getIndex(web.HTMLElement element) {
    List contents = _handleElements;
    int childCount = contents.length;
    for (int i = 0; i < childCount; i++) {
      if (element == contents[i]) {
        return i;
      }
    }
    return -1;
  }

  ReorderEvent _createReorderEvent(int sourceIndex, int destIndex) {
    if (multiSelect) {
      var sources = List<int>.from(_selectedElementIndexes);
      sources.sort();
      return MultiReorderEvent(sources, destIndex);
    } else {
      return ReorderEvent(sourceIndex, destIndex);
    }
  }

  void _resetChildren() {
    if (_currentMoveIndex != -1) {
      List contents = _reorderElements;
      int childCount = contents.length;
      for (int i = 0; i < childCount; i++) {
        web.HTMLElement e = contents[i];
        e.style.transition = '';
        if (_curTransformY[i] != 0) {
          e.style.transform = '';
        }
      }
    }
  }

  bool get showPlaceholder => _reorderActive;
}

typedef ReorderListHandler = void Function(int sourceIndex, int destIndex);

@Directive(
  selector: '[reorderItem]',
)
class ReorderItemDirective {
  @HostBinding('attr.draggable')
  String? get hostDraggable => _reorderHandle == null ? 'true' : null;

  @HostBinding('attr.role')
  static const hostRole = 'listitem';

  @HostBinding('tabIndex')
  static const hostTabIndex = 0;

  final web.HTMLElement element;
  final ReorderHandleProvider? _handleProvider;
  web.HTMLElement? _handleElement;

  web.HTMLElement? get _reorderHandle =>
      _handleElement ?? _handleProvider?.reorderHandle.element;

  @Input()
  set useHandle(web.HTMLElement element) {
    _handleElement = element;
  }

  web.HTMLElement get handleElement => _reorderHandle ?? element;

  ReorderItemDirective(this.element, @Optional() this._handleProvider);
}

abstract class ReorderHandleProvider {
  ReorderHandleDirective get reorderHandle;
}

@Directive(
  selector: '[reorderHandle]',
  exportAs: 'handle',
)
class ReorderHandleDirective {
  @HostBinding('attr.draggable')
  static const hostDraggable = 'true';

  final web.HTMLElement element;

  ReorderHandleDirective(this.element);
}
