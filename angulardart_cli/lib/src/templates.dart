class Templates {
  static const projectPubspec = '''
name: {{name}}
description: {{description}}
version: 0.0.1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  angulardart: ^8.1.6

dev_dependencies:
  build_runner: ^2.16.0
  build_web_compilers: ^4.8.0
  angulardart_test: ^5.1.6
  lints: ^6.0.0
  test: ^1.31.0
''';

  static const projectAnalysisOptions = '''
include: package:lints/recommended.yaml

analyzer:
  errors:
    uri_has_not_been_generated: ignore
''';

  static const projectBuildYaml = '''
targets:
  \$default:
    builders:
      build_web_compilers|entrypoint:
        generate_for:
          - web/main.dart
        release_options:
          dart2js_args:
            - -O4
''';

  static const projectGitignore = '''
.build/
.dart_tool/
.packages
pubspec.lock
''';

  static const projectIndexHtml = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{description}}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styles.css">
    <script defer src="main.dart.js"></script>
</head>
<body>
    <{{component.selector}}></{{component.selector}}>
</body>
</html>
''';

  static const projectMainDart = '''
import 'package:angulardart/angulardart.dart';
import 'package:{{name}}/{{component.targetName}}.template.dart' as ng;

void main() {
  runApp(ng.{{component.className}}NgFactory);
}
''';

  static const projectStyles = '''
body {
  font-family: Roboto, 'Helvetica Neue', Arial, sans-serif;
  margin: 0;
  padding: 20px;
}
''';

  static const componentDart = '''
import 'package:angulardart/angulardart.dart';

@Component(
  selector: '{{selector}}',
  templateUrl: '{{targetName}}.html',
)
class {{className}} {
  var name = 'AngularDart';
}
''';

  static const componentHtml = '''{{=<% %>=}}
<h1>Hello {{name}}</h1>
<%={{ }}=%>''';

  static const directiveDart = '''
import 'package:angulardart/angulardart.dart';

@Directive(
  selector: '[{{selector}}]',
)
class {{className}} {
  final ElementRef _elementRef;

  {{className}}(this._elementRef);
}
''';

  static const pipeDart = '''
import 'package:angulardart/angulardart.dart';

@Pipe('{{className}}')
class {{className}} implements PipeTransform {
  @override
  dynamic transform(dynamic value, [List<dynamic>? args]) {
    return value;
  }
}
''';

  static const serviceDart = '''
import 'package:angulardart/angulardart.dart';

@Injectable()
class {{className}} {
  {{className}}();
}
''';
}
