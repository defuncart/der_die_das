import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/settings/enums/answers_layout.dart';
import 'package:der_die_das/core/db/settings/enums/language.dart';
import 'package:der_die_das/core/db/settings/enums/number_questions.dart';
import 'package:der_die_das/core/db/settings/enums/speech_rate.dart';
import 'package:hive_ce/hive.dart';

abstract class ISettingsService {
  Language get language;
  set language(Language value);

  Level get level;
  set level(Level value);

  NumberQuestions get numberQuestions;
  set numberQuestions(NumberQuestions value);

  bool get showTips;
  set showTips(bool value);

  AnswersLayout get answersLayout;
  set answersLayout(AnswersLayout value);

  SpeechRate get speechRate;
  set speechRate(SpeechRate value);

  double get voiceLevel;
  set voiceLevel(double value);

  double get soundLevel;
  set soundLevel(double value);
}

class SettingsService extends ISettingsService {
  late final Box<dynamic> _box;
  static const _name = 'settings';

  SettingsService() {
    _box = Hive.box<dynamic>(_name);
  }

  @override
  Language get language {
    try {
      final index = _box.get(_Keys.language) as int;
      return Language.values[index];
    } catch (_) {
      return _Defaults.language;
    }
  }

  @override
  set language(Language value) => _box.put(_Keys.language, value.index);

  @override
  Level get level {
    try {
      final index = _box.get(_Keys.level) as int;
      return Level.values[index];
    } catch (_) {
      return _Defaults.level;
    }
  }

  @override
  set level(Level value) => _box.put(_Keys.level, value.index);

  @override
  NumberQuestions get numberQuestions {
    try {
      final index = _box.get(_Keys.numberQuestions) as int;
      return NumberQuestions.values[index];
    } catch (_) {
      return _Defaults.numberQuestions;
    }
  }

  @override
  set numberQuestions(NumberQuestions value) => _box.put(_Keys.numberQuestions, value.index);

  @override
  bool get showTips => _box.get(_Keys.showTips, defaultValue: _Defaults.showTips);

  @override
  set showTips(bool value) => _box.put(_Keys.showTips, value);

  @override
  AnswersLayout get answersLayout {
    try {
      final index = _box.get(_Keys.answersLayout) as int;
      return AnswersLayout.values[index];
    } catch (_) {
      return _Defaults.answersLayout;
    }
  }

  @override
  set answersLayout(AnswersLayout value) => _box.put(_Keys.answersLayout, value.index);

  @override
  SpeechRate get speechRate {
    try {
      final index = _box.get(_Keys.speechRate) as int;
      return SpeechRate.values[index];
    } catch (_) {
      return _Defaults.speechRate;
    }
  }

  @override
  set speechRate(SpeechRate value) => _box.put(_Keys.speechRate, value.index);

  @override
  double get voiceLevel => _box.get(_Keys.voiceLevel, defaultValue: _Defaults.voiceLevel);

  @override
  set voiceLevel(double value) => _box.put(_Keys.voiceLevel, value);

  @override
  double get soundLevel => _box.get(_Keys.soundLevel, defaultValue: _Defaults.soundLevel);

  @override
  set soundLevel(double value) => _box.put(_Keys.soundLevel, value);
}

class _Keys {
  _Keys._();

  static const language = 'language';
  static const level = 'level';
  static const numberQuestions = 'numberQuestions';
  static const showTips = 'showTips';
  static const answersLayout = 'answersLayout';
  static const speechRate = 'speechRate';
  static const voiceLevel = 'voiceLevel';
  static const soundLevel = 'soundLevel';
}

class _Defaults {
  _Defaults._();

  static const language = Language.de;
  static const level = Level.a1;
  static const numberQuestions = NumberQuestions.twentyFive;
  static const showTips = true;
  static const answersLayout = AnswersLayout.standard;
  static const speechRate = SpeechRate.threeQuarters;
  static const voiceLevel = 1.0;
  static const soundLevel = 1.0;
}
