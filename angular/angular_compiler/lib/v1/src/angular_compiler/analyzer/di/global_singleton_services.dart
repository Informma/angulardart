import '../link.dart';

const _globalSingletonServices = [
  TypeLink(
    'ApplicationRef',
    'asset:angulardart/lib/src/core/application_ref.dart',
  ),
  TypeLink(
    'AppViewUtils',
    'asset:angulardart/lib/src/core/linker/app_view_utils.dart',
  ),
  TypeLink(
    'NgZone',
    'asset:angulardart/lib/src/core/zone/ng_zone.dart',
  ),
  TypeLink(
    'Testability',
    'asset:angulardart/lib/src/testability/implementation.dart',
  ),
];

bool isGlobalSingletonService(TypeLink service) =>
    _globalSingletonServices.contains(service);
