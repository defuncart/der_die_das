import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/settings/enums/answers_layout.dart';
import 'package:der_die_das/core/db/settings/enums/language.dart';
import 'package:der_die_das/core/db/settings/enums/number_questions.dart';
import 'package:der_die_das/core/db/settings/enums/speech_rate.dart';
import 'package:der_die_das/core/db/settings/services/settings_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_state.g.dart';

@riverpod
ISettingsService settingsService(Ref ref) => SettingsService();

@Riverpod(keepAlive: true)
class LanguageController extends _$LanguageController {
  @override
  Language build() => ref.read(settingsServiceProvider).language;

  void set(Language value) {
    ref.read(settingsServiceProvider).language = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class LevelController extends _$LevelController {
  @override
  Level build() => ref.read(settingsServiceProvider).level;

  void set(Level value) {
    ref.read(settingsServiceProvider).level = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class NumberQuestionsController extends _$NumberQuestionsController {
  @override
  NumberQuestions build() => ref.read(settingsServiceProvider).numberQuestions;

  void set(NumberQuestions value) {
    ref.read(settingsServiceProvider).numberQuestions = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class ShowTipsController extends _$ShowTipsController {
  @override
  bool build() => ref.read(settingsServiceProvider).showTips;

  void set(bool value) {
    ref.read(settingsServiceProvider).showTips = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class AnswersLayoutController extends _$AnswersLayoutController {
  @override
  AnswersLayout build() => ref.read(settingsServiceProvider).answersLayout;

  void set(AnswersLayout value) {
    ref.read(settingsServiceProvider).answersLayout = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class SpeechRateController extends _$SpeechRateController {
  @override
  SpeechRate build() => ref.read(settingsServiceProvider).speechRate;

  void set(SpeechRate value) {
    ref.read(settingsServiceProvider).speechRate = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class VoiceLevelController extends _$VoiceLevelController {
  @override
  double build() => ref.read(settingsServiceProvider).voiceLevel;

  void set(double value) {
    if (value >= 0 && value <= 1) {
      ref.read(settingsServiceProvider).voiceLevel = value;
      state = value;
    }
  }
}

@Riverpod(keepAlive: true)
class SoundLevelController extends _$SoundLevelController {
  @override
  double build() => ref.read(settingsServiceProvider).soundLevel;

  void set(double value) {
    if (value >= 0 && value <= 1) {
      ref.read(settingsServiceProvider).soundLevel = value;
      state = value;
    }
  }
}
