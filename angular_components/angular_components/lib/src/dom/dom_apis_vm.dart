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

/// A DOM event target (typed `dynamic` on SSR).
typedef EventTarget = dynamic;

/// A DOM global event handler (typed `dynamic` on SSR).
typedef GlobalEventHandlers = dynamic;

/// A set of CSS classes (typed `dynamic` on SSR).
typedef CssClassSet = dynamic;

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

  /// The element's text content.
  String text = '';

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

  /// Appends a text node with [text] to this element.
  void appendText(String text) {}

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
}

/// An HTML heading (`<h1>`..`<h6>`) element.
class HeadingElement extends _ElementBase {
  HeadingElement();

  /// Creates an `<h2>` element.
  static HeadingElement h2() => HeadingElement();
}

/// An HTML `<a>` anchor element.
class AnchorElement extends _ElementBase {
  AnchorElement({String? href});

  /// The anchor's `rel` attribute value.
  String rel = '';

  /// The anchor's `target` attribute value.
  String target = '';

  /// Simulates a click on the anchor.
  void click() {}
}

/// An HTML `<input>` element.
class InputElement extends _ElementBase {
  InputElement();

  /// The input's value.
  String value = '';

  /// The input's validity state.
  dynamic get validity => null;

  /// The input's validation message.
  String get validationMessage => '';
}

/// An HTML `<textarea>` element.
class TextAreaElement extends _ElementBase {
  TextAreaElement();

  /// The textarea's value.
  String value = '';

  /// The textarea's validity state.
  dynamic get validity => null;

  /// The textarea's validation message.
  String get validationMessage => '';
}

/// A DOM document fragment.
class DocumentFragment {
  DocumentFragment();

  /// Appends [child] to this fragment.
  void append(dynamic child) {}

  /// Clones this fragment.
  dynamic clone([bool? deep]) => null;
}

/// A DOM range.
class Range {
  Range();

  /// The start container of the range.
  dynamic get startContainer => null;

  /// The end container of the range.
  dynamic get endContainer => null;

  /// Sets the start of the range to just before [element].
  void setStartBefore(dynamic element) {}

  /// Sets the end of the range to just after [element].
  void setEndAfter(dynamic element) {}
}

/// A DOM location (URL of the window).
class Location {
  /// The full URL.
  String href = '';
}

/// A DOM event.
class Event {
  Event(String type);

  /// The event type (e.g. `'click'`).
  String get type => '';

  /// The event target.
  dynamic get target => null;

  /// The target the event listener was registered on.
  dynamic get currentTarget => null;

  /// The current event phase.
  int get eventPhase => 0;

  /// The event is being dispatched at the target.
  static const int AT_TARGET = 2;

  /// Stops the event from propagating to parent nodes.
  void stopPropagation() {}

  /// Stops the event from propagating, including to listeners on this node.
  void stopImmediatePropagation() {}

  /// Prevents the default action for this event.
  void preventDefault() {}
}

/// A UI event.
class UIEvent extends Event {
  UIEvent(super.type);
}

/// A focus event.
class FocusEvent extends UIEvent {
  FocusEvent(super.type);

  /// The element the focus moved from/to.
  dynamic get relatedTarget => null;
}

/// A keyboard event.
class KeyboardEvent extends UIEvent {
  KeyboardEvent(super.type);

  /// The key code of the pressed key.
  int get keyCode => 0;

  /// The key value of the pressed key.
  String get key => '';

  /// The character code of the pressed key.
  int get charCode => 0;

  /// Whether the Alt key was pressed.
  bool get altKey => false;

  /// Whether the Control key was pressed.
  bool get ctrlKey => false;

  /// Whether the Meta key was pressed.
  bool get metaKey => false;

  /// Whether the Shift key was pressed.
  bool get shiftKey => false;

  /// Whether the key is being held down (auto-repeat).
  bool get repeat => false;
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

  /// The mouse position relative to the page.
  dynamic get page => null;
}

/// A mouse wheel event.
class WheelEvent extends MouseEvent {
  WheelEvent(super.type);

  /// The horizontal scroll amount.
  num get deltaX => 0;

  /// The vertical scroll amount.
  num get deltaY => 0;

  /// The unit of measure of the deltas.
  int get deltaMode => 0;
}

/// A touch event.
class TouchEvent extends UIEvent {
  TouchEvent(super.type);

  /// The list of touches that changed.
  dynamic get changedTouches => null;

  /// The list of touches on the target.
  dynamic get targetTouches => null;

  /// The list of active touches.
  dynamic get touches => null;
}

/// A CSS transition event.
class TransitionEvent extends Event {
  TransitionEvent(super.type);
}

/// The browser window.
class Window {
  Window._();

  static final Window _instance = Window._();

  /// The singleton window instance.
  static Window get instance => _instance;

  /// The window's navigator object.
  dynamic get navigator => null;

  /// The window's console object.
  dynamic get console => null;

  /// The window's document.
  Document get document => Document.instance;

  /// The window's location.
  Location get location => Location();

  /// The horizontal scroll offset.
  int get scrollX => 0;

  /// The vertical scroll offset.
  int get scrollY => 0;

  /// The viewport width.
  int get innerWidth => 0;

  /// The viewport height.
  int get innerHeight => 0;

  /// Scrolls the window to [x], [y].
  void scrollTo(num x, num y) {}

  /// Matches a media query.
  dynamic matchMedia(String query) => null;

  /// Requests an animation frame.
  dynamic requestAnimationFrame(dynamic callback) => 0;

  /// Cancels an animation frame.
  void cancelAnimationFrame(dynamic id) {}

  /// Stream of animation end events.
  dynamic get onAnimationEnd => null;

  /// Stream of key-up events.
  dynamic get onKeyUp => null;

  /// Stream of resize events.
  dynamic get onResize => null;

  /// Stream of transition end events.
  dynamic get onTransitionEnd => null;

  /// Registers an event listener.
  void addEventListener(String type, dynamic listener, [bool? useCapture]) {}

  /// Removes an event listener.
  void removeEventListener(String type, dynamic listener, [bool? useCapture]) {}

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

  /// The document `<head>` element.
  dynamic get head => null;

  /// Finds the first element matching [selectors].
  dynamic querySelector(String selectors) => null;

  /// Finds all elements matching [selectors].
  dynamic querySelectorAll(String selectors) => const [];

  /// Finds the element with the given [id].
  dynamic getElementById(String id) => null;

  /// Creates an element with the given [tag].
  dynamic createElement(String tag, [String? typeExtension]) => null;

  /// Whether this document contains [other].
  bool contains(dynamic other) => false;

  /// Stream of mouse-down events.
  dynamic get onMouseDown => null;

  /// Stream of mouse-up events.
  dynamic get onMouseUp => null;

  /// Stream of mouse-move events.
  dynamic get onMouseMove => null;

  /// Stream of click events.
  dynamic get onClick => null;

  /// Stream of key-down events.
  dynamic get onKeyDown => null;

  /// Stream of key-press events.
  dynamic get onKeyPress => null;

  /// Stream of key-up events.
  dynamic get onKeyUp => null;

  /// Stream of touch-move events.
  dynamic get onTouchMove => null;

  /// Stream of touch-end events.
  dynamic get onTouchEnd => null;

  /// Registers an event listener.
  void addEventListener(String type, dynamic listener, [bool? useCapture]) {}

  /// Removes an event listener.
  void removeEventListener(String type, dynamic listener, [bool? useCapture]) {}
}

/// An HTML document.
class HtmlDocument extends Document {
  HtmlDocument();

  static final HtmlDocument _instance = HtmlDocument();

  /// The singleton HTML document instance.
  static HtmlDocument get instance => _instance;
}

/// An observer for element resize events.
class ResizeObserver {
  ResizeObserver(dynamic callback);

  /// Starts observing [element].
  void observe(dynamic element) {}

  /// Stops observing.
  void disconnect() {}
}

/// An observer for element intersection events.
class IntersectionObserver {
  IntersectionObserver(dynamic callback, [dynamic options]);

  /// Starts observing [element].
  void observe(dynamic element) {}

  /// Stops observing [element].
  void unobserve(dynamic element) {}

  /// Stops observing.
  void disconnect() {}
}

/// An entry in an [IntersectionObserver] notification.
class IntersectionObserverEntry {
  IntersectionObserverEntry();

  /// The observed element.
  dynamic get target => null;

  /// The intersection rectangle.
  dynamic get intersectionRect => null;
}

/// A validator for sanitizing HTML.
class NodeValidator {
  /// Whether [element] is allowed.
  bool allowsElement(dynamic element) => true;

  /// Whether the given attribute is allowed on [element].
  bool allowsAttribute(dynamic element, String attributeName, String value) =>
      true;
}

/// A builder for [NodeValidator] instances.
class NodeValidatorBuilder extends NodeValidator {
  NodeValidatorBuilder();

  /// Allows the given element [tagName].
  NodeValidatorBuilder allowElement(String tagName,
          {List<String>? attributes, UriPolicy? uriPolicy}) =>
      this;
}

/// A policy for validating URIs.
class UriPolicy {
  /// Whether [rawUri] is allowed.
  bool allowsUri(String rawUri) => true;
}

/// A Web Animations API animation (no-op on native/AOT builds).
class Animation {
  /// Cancels the animation.
  void cancel() {}

  /// Plays the animation.
  void play() {}

  /// Pauses the animation.
  void pause() {}

  /// Finishes the animation.
  void finish() {}
}

/// An event listener callback.
typedef EventListener = void Function(Event event);

/// The key codes used by keyboard event handling.
class KeyCode {
  static const int BACKSPACE = 8;
  static const int TAB = 9;
  static const int ENTER = 13;
  static const int ESC = 27;
  static const int PAGE_UP = 33;
  static const int PAGE_DOWN = 34;
  static const int END = 35;
  static const int HOME = 36;
  static const int LEFT = 37;
  static const int UP = 38;
  static const int RIGHT = 39;
  static const int DOWN = 40;
  static const int SPACE = 32;
  static const int DELETE = 46;
  static const int NUM_DELETE = 110;
}

/// The global [Document] instance (stub on native/AOT builds).
final HtmlDocument document = HtmlDocument.instance;

/// The global [Window] instance (stub on native/AOT builds).
final Window window = Window.instance;
