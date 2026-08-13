import 'package:angulardart/angulardart.dart';
import 'package:angulardart_server/angulardart_server.dart';

import 'item_service.dart';

/// Composant d'accueil avec rendu serveur forcé.
///
/// Démo : utilise TransferState pour transférer les données du service
/// depuis le serveur vers le client après hydration.
@Component(
  selector: 'home-page',
  templateUrl: 'home_component.html',
  renderMode: RenderMode.server,
  directives: [coreDirectives],
  providers: [ClassProvider(ItemService)],
  styles: [
    '''
    .item-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
      gap: 16px;
      margin-top: 16px;
    }
    .item-card {
      border: 1px solid #ddd;
      border-radius: 8px;
      padding: 16px;
      background: #fafafa;
    }
    .item-card h3 { margin: 0 0 8px 0; }
    .item-card p { margin: 0; color: #666; font-size: 14px; }
    ''',
  ],
)
class HomePageComponent implements OnInit, AfterViewInit {
  final ItemService _service;

  /// Liste des items récupérée côté serveur.
  late List<Item> items;

  /// Indique si les données ont été transférées depuis le serveur.
  bool get hasServerData => TransferState.has('ssr_full:items');

  HomePageComponent(this._service);

  @override
  void ngOnInit() {
    // Côté serveur : charger les données et les stocker dans TransferState
    items = _service.getItems();
    if (TransferState.has('ssr_full:items') == false) {
      TransferState.set('ssr_full:items', items.map((i) => {'id': i.id, 'name': i.name, 'description': i.description}).toList());
    }
  }

  @override
  void ngAfterViewInit() {
    // Côté client après hydration : récupérer les données du TransferState
    if (TransferState.has('ssr_full:items')) {
      final serverItems = TransferState.get<List>('ssr_full:items') as List;
      items = serverItems.map((map) => Item(
            map['id'] as int,
            map['name'] as String,
            map['description'] as String,
          )).toList();
    }
  }
}
