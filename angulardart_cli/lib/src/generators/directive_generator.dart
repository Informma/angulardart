import 'package:path/path.dart' as path;

import '../entity_name.dart';
import '../generator.dart';
import '../templates.dart';

class DirectiveGenerator extends Generator {
  final String className;
  final String selector;
  final String targetName;

  DirectiveGenerator._(
    this.className,
    this.selector,
    this.targetName,
    String destinationFolder,
  ) : super(destinationFolder);

  factory DirectiveGenerator(
    EntityName classEntityName,
    String destinationFolder,
  ) {
    return DirectiveGenerator._(
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
      Templates.directiveDart,
      context,
    );

    print('Created directive "$className" at $destinationFolder');
  }
}
