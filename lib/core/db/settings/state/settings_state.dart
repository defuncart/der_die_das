import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/settings/enums/language.dart';
import 'package:der_die_das/core/db/settings/enums/number_questions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_state.g.dart';

@Riverpod(keepAlive: true)
class LanguageController extends _$LanguageController {
  @override
  Language build() => Language.de;

  void set(Language value) {
    state = value;
  }
}

@Riverpod(keepAlive: true)
class LevelController extends _$LevelController {
  @override
  Level build() => Level.a1;

  void set(Level value) {
    state = value;
  }
}

@Riverpod(keepAlive: true)
class NumberQuestionsController extends _$NumberQuestionsController {
  @override
  NumberQuestions build() => NumberQuestions.twentyFive;

  void set(NumberQuestions value) {
    state = value;
  }
}

@Riverpod(keepAlive: true)
class ShowTipsController extends _$ShowTipsController {
  @override
  bool build() => true;

  void set(bool value) {
    state = value;
  }
}

@Riverpod(keepAlive: true)
class VoiceLevelController extends _$VoiceLevelController {
  @override
  double build() => 1;

  void set(double value) {
    if (value >= 0 && value <= 1) {
      state = value;
    }
  }
}

@Riverpod(keepAlive: true)
class SoundLevelController extends _$SoundLevelController {
  @override
  double build() => 1;

  void set(double value) {
    if (value >= 0 && value <= 1) {
      state = value;
    }
  }
}
