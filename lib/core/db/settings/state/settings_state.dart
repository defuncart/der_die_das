import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/settings/enums/answers_layout.dart';
import 'package:der_die_das/core/db/settings/enums/language.dart';
import 'package:der_die_das/core/db/settings/enums/number_questions.dart';
import 'package:der_die_das/core/db/settings/services/settings_service.dart';
import 'package:der_die_das/core/sound/tts/text_to_speech_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_state.g.dart';

@riverpod
ISettingsService _settingsService(_SettingsServiceRef ref) => SettingsService();

@Riverpod(keepAlive: true)
class LanguageController extends _$LanguageController {
  @override
  Language build() => ref.read(_settingsServiceProvider).language;

  void set(Language value) {
    ref.read(_settingsServiceProvider).language = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class LevelController extends _$LevelController {
  @override
  Level build() => ref.read(_settingsServiceProvider).level;

  void set(Level value) {
    ref.read(_settingsServiceProvider).level = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class NumberQuestionsController extends _$NumberQuestionsController {
  @override
  NumberQuestions build() => ref.read(_settingsServiceProvider).numberQuestions;

  void set(NumberQuestions value) {
    ref.read(_settingsServiceProvider).numberQuestions = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class ShowTipsController extends _$ShowTipsController {
  @override
  bool build() => ref.read(_settingsServiceProvider).showTips;

  void set(bool value) {
    ref.read(_settingsServiceProvider).showTips = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class AnswersLayoutController extends _$AnswersLayoutController {
  @override
  AnswersLayout build() => ref.read(_settingsServiceProvider).answersLayout;

  void set(AnswersLayout value) {
    ref.read(_settingsServiceProvider).answersLayout = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class VoiceLevelController extends _$VoiceLevelController {
  @override
  double build() => ref.read(_settingsServiceProvider).voiceLevel;

  void set(double value) {
    if (value >= 0 && value <= 1) {
      ref.read(_settingsServiceProvider).voiceLevel = value;
      state = value;
    }
  }
}

@Riverpod(keepAlive: true)
class SoundLevelController extends _$SoundLevelController {
  @override
  double build() => ref.read(_settingsServiceProvider).soundLevel;

  void set(double value) {
    if (value >= 0 && value <= 1) {
      ref.read(_settingsServiceProvider).soundLevel = value;
      state = value;
    }
  }
}

@Riverpod(keepAlive: true)
class SpeechRateController extends _$SpeechRateController {
  @override
  TextToSpeechRate build() => ref.read(_settingsServiceProvider).speechRate;

  void set(TextToSpeechRate value) {
    ref.read(_settingsServiceProvider).speechRate = value;
    state = value;
  }
}
