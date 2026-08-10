import 'package:angulardart/angulardart.dart';

/// Service injecté qui fournit des données mockées pour l'exemple SSR.
///
/// Démo : un service @Injectable() avec des méthodes retournant
/// des listes de données simulées (comme une API REST).
@Injectable()
class ItemService {
  /// Retourne la liste des items disponibles (simule un appel API).
  List<Item> getItems() => const [
        Item(1, 'Laptop', 'Ordinateur portable haute performance'),
        Item(2, 'Keyboard', 'Clavier mécanique RGB'),
        Item(3, 'Monitor', 'Moniteur 4K 27 pouces'),
        Item(4, 'Headphones', 'Casque audio sans fil'),
        Item(5, 'Mouse', 'Souris gaming sans fil'),
      ];

  /// Retourne un item par ID (simule GET /api/items/:id).
  Item? getItemById(int id) => getItems().firstWhere(
        (item) => item.id == id,
        orElse: () => throw StateError('Item $id not found'),
      );
}

/// Modèle de donnée simple pour l'exemple.
class Item {
  final int id;
  final String name;
  final String description;

  const Item(this.id, this.name, this.description);
}
