import 'package:path/path.dart' as path;

import '../entity_name.dart';
import '../generator.dart';
import '../templates.dart';

class PipeGenerator extends Generator {
  final String className;
  final String targetName;

  PipeGenerator._(
    this.className,
    this.targetName,
    String destinationFolder,
  ) : super(destinationFolder);

  factory PipeGenerator(
    EntityName classEntityName,
    String destinationFolder,
  ) {
    return PipeGenerator._(
      classEntityName.className,
      classEntityName.underscored,
      destinationFolder,
    );
  }

  @override
  Future<void> generate() async {
    final context = {
      'className': className,
    };

    await writeFromTemplate(
      path.join(destinationFolder, '$targetName.dart'),
      Templates.pipeDart,
      context,
    );

    print('Created pipe "$className" at $destinationFolder');
  }
}
