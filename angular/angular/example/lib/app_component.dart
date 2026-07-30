import 'package:angulardart/angular.dart';

@Component(
  selector: 'my-app',
  template: '''
    <h1>Hello {{name}}!</h1>
    <p>Welcome to AngularDart.</p>
    <button (click)="incrementCounter()">
      Clicked {{counter}} times
    </button>
  ''',
  directives: [],
)
class AppComponent {
  String name = 'World';
  int counter = 0;

  void incrementCounter() {
    counter++;
  }
}
