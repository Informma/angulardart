import 'package:angulardart/angulardart.dart';
import 'package:angulardart_forms/angulardart_forms.dart';

/// Composant de formulaire de contact avec rendu automatique.
///
/// Démo : utilise angulardart_forms pour un formulaire réactif simple.
@Component(
  selector: 'contact-page',
  templateUrl: 'contact_form_component.html',
  directives: [coreDirectives, formDirectives],
  providers: [ClassProvider(ContactService)],
)
class ContactPageComponent implements OnInit {
  final ContactService _service;

  /// Formulaire réactif avec nom, email et message.
  late ControlGroup form;

  /// Indique si le formulaire a été soumis avec succès.
  bool submitted = false;

  /// Erreur éventuelle lors de la soumission.
  String? errorMessage;

  ContactPageComponent(this._service);

  @override
  void ngOnInit() {
    // Construire le formulaire réactif avec validation
    form = ControlGroup({
      'name': Control('', Validators.required),
      'email': Control('', Validators.compose([Validators.required, Validators.pattern(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$')])),
      'message': Control('', Validators.required),
    });
  }

  /// Contrôle du champ « name » (non-null, initialisé dans [ngOnInit]).
  Control get nameControl => form.controls['name']! as Control;

  /// Contrôle du champ « email » (non-null, initialisé dans [ngOnInit]).
  Control get emailControl => form.controls['email']! as Control;

  /// Contrôle du champ « message » (non-null, initialisé dans [ngOnInit]).
  Control get messageControl => form.controls['message']! as Control;

  /// Gestionnaire de soumission du formulaire.
  void onSubmit() {
    if (form.valid) {
      final value = form.value!;
      _service.submit({
        'name': value['name'] as String,
        'email': value['email'] as String,
        'message': value['message'] as String,
      });
      submitted = true;
    }
  }

  /// Réinitialise le formulaire après soumission.
  void resetForm() {
    form.reset();
    submitted = false;
    errorMessage = null;
  }
}

/// Service mocké pour simuler l'envoi du formulaire.
class ContactService {
  void submit(Map<String, dynamic> data) {
    // Simule un appel API - en vrai, ce serait un POST vers /api/contact
    print('Contact form submitted: $data');
  }
}
