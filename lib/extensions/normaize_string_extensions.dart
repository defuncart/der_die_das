extension NormalizeStringExtensions on String {
  static const _normalizePairs = {
    'ä': 'a',
    'ö': 'o',
    'ü': 'u',
    'ß': 'ss',
  };

  String get normalized {
    var str = toLowerCase();
    for (final kvp in _normalizePairs.entries) {
      str = str.replaceAll(kvp.key, kvp.value);
    }
    return str;
  }
}
