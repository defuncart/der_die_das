import 'dart:async';

import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/db/nouns_database/models/tip.dart';
import 'package:der_die_das/core/db/nouns_database/services/nouns_database.dart';
import 'package:der_die_das/core/db/nouns_database/state/state.dart';
import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/models/game_result.dart';
import 'package:der_die_das/core/sound/sound_state.dart';
import 'package:der_die_das/core/state/sound_settings_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_state.g.dart';

@riverpod
class GameStateNotifier extends _$GameStateNotifier {
  late final int _numberQuestions;
  late final List<Noun> _nouns;
  var _currentIndex = 0;
  var _correct = 0;
  final _incorrectlyAnswered = <Noun>[];

  Noun get _currentNoun => _nouns[_currentIndex];
  double get _progress => _currentIndex / _numberQuestions;

  @override
  Future<GameState> build() async {
    _numberQuestions = ref.read(numberQuestionsProvider).value;
    _nouns = await ref.read(nounDatabaseProvider).getNouns(count: _numberQuestions, level: ref.read(levelProvider));

    return _gameState;
  }

  void onAnswer(Article answer) {
    final answeredCorrectly = _currentNoun.articles.contains(answer);
    if (answeredCorrectly) {
      _correct++;
      state = AsyncData((
        progress: (_currentIndex + 1) / _numberQuestions,
        withoutArticle: _currentNoun.withoutArticle,
        ambiguousLabel: _currentNoun.ambiguousExample,
        tip: _currentNoun.tip,
        answeredCorrectly: (articles: _currentNoun.articles),
        answeredIncorrectly: null,
        result: null,
      ));
    } else {
      _incorrectlyAnswered.add(_currentNoun);
      state = AsyncData((
        progress: (_currentIndex + 1) / _numberQuestions,
        withoutArticle: _currentNoun.withoutArticle,
        ambiguousLabel: _currentNoun.ambiguousExample,
        tip: _currentNoun.tip,
        answeredCorrectly: null,
        answeredIncorrectly: (articles: _currentNoun.articles),
        result: null,
      ));
    }
    ref
        .read(nounDatabaseProvider)
        .updateProgress(
          key: _currentNoun.key,
          answeredCorrectly: answeredCorrectly,
        );
    _playSFX(answeredCorrectly);
    Future.delayed(const Duration(milliseconds: 500)).then((_) {
      ref.invalidate(speakProvider(text: _currentNoun.speak));
      ref.read(speakProvider(text: _currentNoun.speak));
      if (answeredCorrectly) {
        Future.delayed(const Duration(seconds: 1)).then((_) {
          onContinue();
        });
      }
    });
  }

  Future<void> _playSFX(bool answeredCorrectly) async {
    await ref.read(sfxServiceProvider).setVolume(ref.read(soundLevelProvider));
    await ref
        .read(sfxServiceProvider)
        .playEffect(answeredCorrectly ? SFXEffect.answerCorrect : SFXEffect.answerIncorrect);
  }

  void onContinue() {
    if (_currentIndex < _numberQuestions - 1) {
      _currentIndex++;
      state = AsyncData(_gameState);
    } else {
      state = AsyncData((
        progress: (_currentIndex + 1) / _numberQuestions,
        withoutArticle: _currentNoun.withoutArticle,
        ambiguousLabel: _currentNoun.ambiguousExample,
        tip: _currentNoun.tip,
        answeredCorrectly: null,
        answeredIncorrectly: (articles: _currentNoun.articles),
        result: (
          correct: _correct,
          total: _numberQuestions,
          incorrectlyAnswered: _incorrectlyAnswered.map(
            (noun) => (withArticle: noun.withArticle, withoutArticle: noun.withoutArticle, tip: noun.tip),
          ),
        ),
      ));
    }
  }

  GameState get _gameState => (
    progress: _progress,
    withoutArticle: _currentNoun.withoutArticle,
    ambiguousLabel: _currentNoun.ambiguousExample,
    tip: _currentNoun.tip,
    answeredCorrectly: null,
    answeredIncorrectly: null,
    result: null,
  );
}

// TODO convert to unions
typedef GameState = ({
  double progress,
  String withoutArticle,
  String? ambiguousLabel,
  Tip? tip,
  AnsweredCorrectly? answeredCorrectly,
  AnsweredIncorrectly? answeredIncorrectly,
  GameResult? result,
});

typedef AnsweredCorrectly = ({Iterable<Article> articles});

typedef AnsweredIncorrectly = ({Iterable<Article> articles});
