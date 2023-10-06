import 'package:flutter/material.dart';

enum Language {
  de,
  en,
  pl,
}

extension LanguageLocaleExtensions on Language {
  Locale toLocale() => Locale(name);
}
