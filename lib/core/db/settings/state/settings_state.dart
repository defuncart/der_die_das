import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/settings/enums/answers_layout.dart';
import 'package:der_die_das/core/db/settings/enums/language.dart';
import 'package:der_die_das/core/db/settings/enums/number_questions.dart';
import 'package:der_die_das/core/db/settings/enums/speech_rate.dart';
import 'package:der_die_das/core/db/settings/services/settings_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_state.g.dart';

@Riverpod(keepAlive: true)
ISettingsService settingsService(Ref ref) => SettingsService();

@Riverpod(keepAlive: true)
class LanguageNotifier extends _$LanguageNotifier {
  @override
  Language build() => ref.read(settingsServiceProvider).language;

  void set(Language value) {
    ref.read(settingsServiceProvider).language = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class LevelNotifier extends _$LevelNotifier {
  @override
  Level build() => ref.read(settingsServiceProvider).level;

  void set(Level value) {
    ref.read(settingsServiceProvider).level = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class NumberQuestionsNotifier extends _$NumberQuestionsNotifier {
  @override
  NumberQuestions build() => ref.read(settingsServiceProvider).numberQuestions;

  void set(NumberQuestions value) {
    ref.read(settingsServiceProvider).numberQuestions = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class ShowTipsNotifier extends _$ShowTipsNotifier {
  @override
  bool build() => ref.read(settingsServiceProvider).showTips;

  void set(bool value) {
    ref.read(settingsServiceProvider).showTips = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class AnswersLayoutNotifier extends _$AnswersLayoutNotifier {
  @override
  AnswersLayout build() => ref.read(settingsServiceProvider).answersLayout;

  void set(AnswersLayout value) {
    ref.read(settingsServiceProvider).answersLayout = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class SpeechRateNotifier extends _$SpeechRateNotifier {
  @override
  SpeechRate build() => ref.read(settingsServiceProvider).speechRate;

  void set(SpeechRate value) {
    ref.read(settingsServiceProvider).speechRate = value;
    state = value;
  }
}

@Riverpod(keepAlive: true)
class VoiceLevelNotifier extends _$VoiceLevelNotifier {
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
class SoundLevelNotifier extends _$SoundLevelNotifier {
  @override
  double build() => ref.read(settingsServiceProvider).soundLevel;

  void set(double value) {
    if (value >= 0 && value <= 1) {
      ref.read(settingsServiceProvider).soundLevel = value;
      state = value;
    }
  }
}
