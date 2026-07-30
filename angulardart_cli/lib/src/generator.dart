import 'dart:io';

import 'package:mustache_template/mustache.dart';

abstract class Generator {
  final String destinationFolder;

  Generator(this.destinationFolder);

  Future<void> generate();

  Future<void> writeFromTemplate(
    String targetPath,
    String templateContent,
    Map<String, dynamic> context,
  ) async {
    final template = Template(templateContent, htmlEscapeValues: false);
    final output = template.renderString(context);

    final file = File(targetPath);
    await file.parent.create(recursive: true);
    await file.writeAsString(output);
  }

  Future<void> writeStatic(String targetPath, String content) async {
    final file = File(targetPath);
    await file.parent.create(recursive: true);
    await file.writeAsString(content);
  }
}
