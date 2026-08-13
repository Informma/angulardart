/// Native/AOT stub router event types for server-side rendering.
library;

/// Stub router event (native).
class RouterEvent {
  String get type => '';
}

/// Stub router pop state event (native).
class RouterPopStateEvent implements RouterEvent {
  Object? get state => null;
  @override
  String get type => 'popstate';
}
