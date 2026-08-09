library;

import 'dart:async';

import 'package:angulardart/angulardart.dart';

import '../router/router.dart' show Router;
import '../router/router_state.dart';
import 'router_link_directive_vm.dart' show RouterLink;

@Directive(
  selector: '[routerLinkActive]',
)
class RouterLinkActive implements AfterViewInit, OnDestroy {
  final Router _router;

  late StreamSubscription<RouterState> _routeChanged;

  @ContentChildren(RouterLink)
  List<RouterLink>? links;

  RouterLinkActive(dynamic element, this._router);

  @override
  void ngOnDestroy() => _routeChanged.cancel();

  @override
  void ngAfterViewInit() {
    _routeChanged = _router.stream.listen(_update);
    _update(_router.current);
  }

  @Input()
  set routerLinkActive(Object classes) {}

  void _update(RouterState? routerState) {}
}
