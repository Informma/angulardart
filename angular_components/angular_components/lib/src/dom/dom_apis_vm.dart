/// Native/AOT platform stub implementation of the DOM APIs for
/// angular_components.
///
/// On server-side rendering there is no DOM; these stubs only exist to satisfy
/// the compiler. Accessing members at runtime returns `null`/no-op values.
///
/// `Element`, `HtmlElement`, `Node` and `HeadElement` are typed as `dynamic`
/// on native/AOT builds so that server-side rendering (where the AngularDart
/// runtime injects a `RenderNode` as the host element) does not fail on an
/// `is` type check. The `KeyCode`/`Event` constant names intentionally mirror
/// `dart:html`'s UPPER_CASE identifiers so that the browser and native branches
/// expose the exact same API.
// ignore_for_file: constant_identifier_names
library;

import 'dart:math' show Rectangle;

export 'dart:math' show Point, Rectangle;

/// A DOM element (typed `dynamic` so a `RenderNode` can be used on SSR).
typedef Element = dynamic;

/// An HTML element (typed `dynamic` so a `RenderNode` can be used on SSR).
typedef HtmlElement = dynamic;

/// A DOM node (typed `dynamic` so a `RenderNode` can be used on SSR).
typedef Node = dynamic;

/// An HTML `<head>` element (typed `dynamic` on SSR).
typedef HeadElement = dynamic;

/// Shared base for concrete element stubs (`DivElement`, `StyleElement`).
class _ElementBase {
  /// Parent element, or `null` for the root.
  dynamic get parent => null;

  /// The element's attributes map.
  dynamic get attributes => const {};

  /// The element's class set.
  dynamic get classes => null;

  /// The element's tag name (e.g. `'div'`).
  String get tagName => '';

  /// The element's inline style declaration.
  dynamic get style => null;

  /// The element's `class` attribute value.
  String className = '';

  /// The element's `id` attribute value.
  String id = '';

  /// The element's tab index, or `null`.
  int? tabIndex;

  /// The element's offset rectangle.
  Rectangle<num> get offset => const Rectangle<num>(0, 0, 0, 0);

  /// Sets an attribute [name] to [value].
  void setAttribute(String name, String value) {}

  /// Clones this element.
  dynamic clone([bool? deep]) => null;

  /// Removes this element from the DOM.
  void remove() {}

  /// Appends [child] to this element.
  void append(dynamic child) {}

  /// Registers an event listener.
  void addEventListener(String type, dynamic listener, [bool? useCapture]) {}

  /// Removes an event listener.
  void removeEventListener(String type, dynamic listener, [bool? useCapture]) {}

  /// Returns the element's bounding client rectangle.
  Rectangle<num> getBoundingClientRect() => const Rectangle<num>(0, 0, 0, 0);

  /// Stream of mouse-down events.
  dynamic get onMouseDown => null;

  /// Stream of mouse-up events.
  dynamic get onMouseUp => null;

  /// Stream of click events.
  dynamic get onClick => null;

  /// Focuses this element.
  void focus() {}

  /// Whether this element contains [other].
  bool contains(dynamic other) => false;

  /// Animates this element (Web Animations API).
  dynamic animate(dynamic keyframes, dynamic options) => null;
}

/// An HTML `<div>` element.
class DivElement extends _ElementBase {
  DivElement();
}

/// An HTML `<style>` element.
class StyleElement extends _ElementBase {
  StyleElement();

  /// The style element's text content.
  String text = '';
}

/// A DOM event.
class Event {
  Event(String type);

  /// The event type (e.g. `'click'`).
  String get type => '';

  /// The event target.
  dynamic get target => null;

  /// The current event phase.
  int get eventPhase => 0;

  /// The event is being dispatched at the target.
  static const int AT_TARGET = 2;

  /// Stops the event from propagating to parent nodes.
  void stopPropagation() {}
}

/// A UI event.
class UIEvent extends Event {
  UIEvent(super.type);
}

/// A focus event.
class FocusEvent extends UIEvent {
  FocusEvent(super.type);
}

/// A keyboard event.
class KeyboardEvent extends UIEvent {
  KeyboardEvent(super.type);

  /// The key code of the pressed key.
  int get keyCode => 0;

  /// The key value of the pressed key.
  String get key => '';

  /// Prevents the default action for this event.
  void preventDefault() {}
}

/// A mouse event.
class MouseEvent extends UIEvent {
  MouseEvent(super.type);

  /// The button number that was pressed.
  int get button => 0;

  /// Whether the Alt key was pressed.
  bool get altKey => false;

  /// Whether the Control key was pressed.
  bool get ctrlKey => false;

  /// Whether the Meta key was pressed.
  bool get metaKey => false;

  /// Whether the Shift key was pressed.
  bool get shiftKey => false;

  /// The mouse position relative to the viewport.
  dynamic get client => null;
}

/// The browser window.
class Window {
  Window._();

  static final Window _instance = Window._();

  /// The singleton window instance.
  static Window get instance => _instance;

  /// The window's navigator object.
  dynamic get navigator => null;

  /// Matches a media query.
  dynamic matchMedia(String query) => null;

  /// Requests an animation frame.
  dynamic requestAnimationFrame(dynamic callback) => 0;

  /// Cancels an animation frame.
  void cancelAnimationFrame(dynamic id) {}

  /// Stream of animation end events.
  dynamic get onAnimationEnd => null;

  /// Stream of resize events.
  dynamic get onResize => null;

  /// Stream of transition end events.
  dynamic get onTransitionEnd => null;

  /// Registers an event listener.
  void addEventListener(String type, dynamic listener, [bool? useCapture]) {}

  /// Dispatches an event.
  dynamic dispatchEvent(dynamic event) => null;
}

/// The browser document.
class Document {
  Document();

  static final Document _instance = Document();

  /// The singleton document instance.
  static Document get instance => _instance;

  /// The currently focused element.
  dynamic get activeElement => null;

  /// The document root `<html>` element.
  dynamic get documentElement => null;

  /// The document `<body>` element.
  dynamic get body => null;

  /// Finds the first element matching [selectors].
  dynamic querySelector(String selectors) => null;

  /// Finds all elements matching [selectors].
  dynamic querySelectorAll(String selectors) => const [];

  /// Whether this document contains [other].
  bool contains(dynamic other) => false;

  /// Stream of mouse-down events.
  dynamic get onMouseDown => null;

  /// Stream of mouse-up events.
  dynamic get onMouseUp => null;

  /// Stream of click events.
  dynamic get onClick => null;

  /// Stream of key-down events.
  dynamic get onKeyDown => null;

  /// Stream of key-press events.
  dynamic get onKeyPress => null;

  /// Stream of key-up events.
  dynamic get onKeyUp => null;

  /// Registers an event listener.
  void addEventListener(String type, dynamic listener, [bool? useCapture]) {}

  /// Removes an event listener.
  void removeEventListener(String type, dynamic listener, [bool? useCapture]) {}
}

/// An HTML document.
class HtmlDocument extends Document {
  HtmlDocument();
}

/// An observer for element resize events.
class ResizeObserver {
  ResizeObserver(dynamic callback);

  /// Starts observing [element].
  void observe(dynamic element) {}

  /// Stops observing.
  void disconnect() {}
}

/// An event listener callback.
typedef EventListener = void Function(Event event);

/// The key codes used by keyboard event handling.
class KeyCode {
  static const int ENTER = 13;
  static const int SPACE = 32;
  static const int LEFT = 37;
  static const int UP = 38;
  static const int RIGHT = 39;
  static const int DOWN = 40;
  static const int HOME = 36;
  static const int END = 35;
  static const int ESC = 27;
}

/// The global [Document] instance (stub on native/AOT builds).
final Document document = Document.instance;

/// The global [Window] instance (stub on native/AOT builds).
final Window window = Window.instance;
