import 'package:path/path.dart' as path;

import '../entity_name.dart';
import '../generator.dart';
import '../templates.dart';

class ServiceGenerator extends Generator {
  final String className;
  final String targetName;

  ServiceGenerator._(
    this.className,
    this.targetName,
    String destinationFolder,
  ) : super(destinationFolder);

  factory ServiceGenerator(
    EntityName classEntityName,
    String destinationFolder,
  ) {
    return ServiceGenerator._(
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
      Templates.serviceDart,
      context,
    );

    print('Created service "$className" at $destinationFolder');
  }
}
