import 'package:angulardart/angulardart.dart';

/// Composant Dashboard avec rendu client uniquement.
///
/// Démo : RenderMode.client — ce composant n'est JAMAIS rendu sur le serveur.
/// Utile pour les zones fortement interactives qui ne nécessitent pas de SEO.
@Component(
  selector: 'dashboard-page',
  templateUrl: 'dashboard_component.html',
  renderMode: RenderMode.client,
)
class DashboardPageComponent implements OnInit {
  /// Compteur incrémenté côté client uniquement.
  int counter = 0;

  @override
  void ngOnInit() {
    // Cette logique ne s'exécute que côté client
    print('Dashboard initialized on client');
  }

  /// Incrémente le compteur (interactif, impossible à SSR).
  void increment() => counter++;

  /// Réinitialise le compteur.
  void reset() => counter = 0;
}
