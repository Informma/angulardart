class EntityName {
  final String raw;

  EntityName(this.raw);

  String get camelCased {
    final parts = raw.split(RegExp(r'[_\-\s]+'));
    if (parts.isEmpty) return raw;
    return parts.first.toLowerCase() +
        parts.skip(1).map((p) {
          if (p.isEmpty) return p;
          return p[0].toUpperCase() + p.substring(1);
        }).join();
  }

  String get className {
    final parts = raw.split(RegExp(r'[_\-\s]+'));
    return parts.map((p) {
      if (p.isEmpty) return p;
      return p[0].toUpperCase() + p.substring(1);
    }).join();
  }

  String get underscored {
    return raw
        .replaceAllMapped(
          RegExp(r'([A-Z])'),
          (m) => '_${m.group(0)!.toLowerCase()}',
        )
        .replaceAll(RegExp(r'^_'), '')
        .replaceAll(RegExp(r'[-\s]+'), '_')
        .toLowerCase();
  }

  String get dashed {
    return underscored.replaceAll('_', '-');
  }

  String get spaced {
    return raw.split(RegExp(r'[_\-\s]+')).map((p) {
      if (p.isEmpty) return p;
      return p[0].toLowerCase() + p.substring(1);
    }).join(' ');
  }
}
