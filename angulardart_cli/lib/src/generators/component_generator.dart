import 'package:path/path.dart' as path;

import '../entity_name.dart';
import '../generator.dart';
import '../templates.dart';

class ComponentGenerator extends Generator {
  final String className;
  final String selector;
  final String targetName;

  ComponentGenerator._(
    this.className,
    this.selector,
    this.targetName,
    String destinationFolder,
  ) : super(destinationFolder);

  factory ComponentGenerator(
    EntityName classEntityName,
    String destinationFolder,
  ) {
    return ComponentGenerator._(
      classEntityName.className,
      classEntityName.dashed,
      classEntityName.underscored,
      destinationFolder,
    );
  }

  @override
  Future<void> generate() async {
    final context = {
      'className': className,
      'selector': selector,
      'targetName': targetName,
    };

    await writeFromTemplate(
      path.join(destinationFolder, '$targetName.dart'),
      Templates.componentDart,
      context,
    );
    await writeFromTemplate(
      path.join(destinationFolder, '$targetName.html'),
      Templates.componentHtml,
      context,
    );

    print('Created component "$className" at $destinationFolder');
  }
}
