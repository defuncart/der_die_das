import 'dart:async';

import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/db/nouns_database/services/nouns_database.dart';
import 'package:der_die_das/core/db/nouns_database/state/state.dart';
import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/models/game_result.dart';
import 'package:der_die_das/core/sound/sound_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_state.g.dart';

@riverpod
class GameStateController extends _$GameStateController {
  late final int _numberQuestions;
  late final List<Noun> _nouns;
  var _currentIndex = 0;
  var _correct = 0;
  final _incorrectlyAnswered = <Noun>[];
  Timer? _timer;

  Noun get _currentNoun => _nouns[_currentIndex];
  double get _progress => _currentIndex / _numberQuestions;

  @override
  Future<GameState> build() async {
    _numberQuestions = ref.read(numberQuestionsControllerProvider).value;
    _nouns = await ref.read(nounDatabaseProvider).getNouns(
          count: _numberQuestions,
          level: ref.read(levelControllerProvider),
        );

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
        tipId: state.value?.tipId,
        answeredCorrectly: (articles: _currentNoun.articles,),
        answeredIncorrectly: null,
        result: null,
      ));
      ref.read(ttsProvider).speak(_currentNoun.speak);
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        _timer?.cancel();
        onContinue();
      });
    } else {
      _incorrectlyAnswered.add(_currentNoun);

      state = AsyncData((
        progress: (_currentIndex + 1) / _numberQuestions,
        withoutArticle: _currentNoun.withoutArticle,
        ambiguousLabel: _currentNoun.ambiguousExample,
        tipId: state.value?.tipId,
        answeredCorrectly: null,
        answeredIncorrectly: (articles: _currentNoun.articles,),
        result: null,
      ));
      ref.read(ttsProvider).speak(_currentNoun.speak);
    }
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
        tipId: state.value?.tipId,
        answeredCorrectly: null,
        answeredIncorrectly: (articles: _currentNoun.articles,),
        result: (
          correct: _correct,
          total: _numberQuestions,
          incorrectlyAnswered: _incorrectlyAnswered.map((noun) => (
                withArticle: noun.withArticle,
                tipId: _currentNoun.tipId,
              )),
        ),
      ));
    }
  }

  GameState get _gameState => (
        progress: _progress,
        withoutArticle: _currentNoun.withoutArticle,
        ambiguousLabel: _currentNoun.ambiguousExample,
        tipId: _currentNoun.tipId,
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
  int? tipId,
  AnsweredCorrectly? answeredCorrectly,
  AnsweredIncorrectly? answeredIncorrectly,
  GameResult? result,
});

typedef AnsweredCorrectly = ({
  Iterable<Article> articles,
});

typedef AnsweredIncorrectly = ({
  Iterable<Article> articles,
});
