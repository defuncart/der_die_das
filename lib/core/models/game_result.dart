import 'package:der_die_das/core/db/nouns_database/models/tip.dart';

typedef GameResult = ({int correct, int total, Iterable<ResultNoun> incorrectlyAnswered});

typedef ResultNoun = ({String withArticle, String withoutArticle, Tip? tip});
