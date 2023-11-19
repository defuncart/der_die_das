import 'package:flutter/material.dart';

enum Language {
  de,
  en,
  pl;

  Locale toLocale() => Locale(name);
}
