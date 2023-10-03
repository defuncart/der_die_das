import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/settings/enums/language.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_state.g.dart';

@riverpod
class LanguageController extends _$LanguageController {
  @override
  Language build() => Language.de;

  void set(Language value) {
    state = value;
  }
}

@riverpod
class LevelController extends _$LevelController {
  @override
  Level build() => Level.a1;

  void set(Level value) {
    state = value;
  }
}
