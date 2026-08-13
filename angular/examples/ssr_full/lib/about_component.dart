import 'package:angulardart/angulardart.dart';

/// Composant About avec rendu automatique (par défaut).
///
/// Démo : RenderMode.automatic — SSR sur le serveur, hydration sur le client.
@Component(
  selector: 'about-page',
  template: '''<h1>About</h1>
<p>This page uses automatic render mode.</p>
<p>On the server, this component is rendered to HTML via SSR.</p>
<p>On the client, it hydrates from the pre-rendered HTML (no re-render).</p>
<div class="info-box">
  <h2>What is AngularDart?</h2>
  <p>AngularDart is a web framework for building structured, maintainable, and performant applications using Dart.</p>
</div>''',
  styles: [
    '''
    .info-box {
      background: #f0f4ff;
      border-left: 4px solid #1976d2;
      padding: 16px;
      margin-top: 16px;
      border-radius: 0 8px 8px 0;
    }
    .info-box h2 { margin: 0 0 8px 0; }
    ''',
  ],
)
class AboutPageComponent {}
