/// Browser implementation of router event types using `dart:html`.
library;

import 'dart:html' as html;

/// The router event type (browser).
typedef RouterEvent = html.Event;

/// The router pop state event type (browser).
typedef RouterPopStateEvent = html.PopStateEvent;
