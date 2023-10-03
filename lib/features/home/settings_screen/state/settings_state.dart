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
