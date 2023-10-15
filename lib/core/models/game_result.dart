typedef GameResult = ({
  int correct,
  int total,
  Iterable<ResultNoun> incorrectlyAnswered,
});

typedef ResultNoun = ({
  String withArticle,
  int? tipId,
});
