import 'dart:io';

import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/nouns_database/models/tip.dart';
import 'package:der_die_das/core/db/nouns_database/services/nouns_database.dart' show Noun;
import 'package:der_die_das/core/db/nouns_database/utils/equal_list.dart';
import 'package:der_die_das/core/extensions/normaize_string_extensions.dart';

Future<List<Noun>> convertNouns() async {
  const filepath = 'assets_dev/db/nouns_a1.csv';
  final file = File(filepath);
  var contents = await file.readAsLines();
  contents = contents.sublist(1);

  final nouns = <Noun>[];
  nouns.addAll(await _convertLevel(Level.a1, 0));
  nouns.addAll(await _convertLevel(Level.a2, nouns.length));

  return nouns;
}

Future<List<Noun>> _convertLevel(Level level, startId) async {
  final filepath = 'assets_dev/db/nouns_${level == Level.a1 ? 'a1' : 'a2'}.csv';
  final file = File(filepath);
  var contents = await file.readAsLines();
  contents = contents.sublist(1);

  final nouns = <Noun>[];
  var id = startId;
  for (final line in contents) {
    final components = line.split(',');
    final noun = Noun(
      id: id,
      key: components[_NounIndex.key],
      withoutArticle: components[_NounIndex.withoutArticle],
      withoutArticleNormalized: components[_NounIndex.withoutArticle].normalized,
      level: level,
      articles: EqualList(components[_NounIndex.articleIndices]
          .split('|')
          .map((article) => Article.values[int.parse(article)])
          .toList()),
      ambiguousExample: components[_NounIndex.ambiguousExample].notEmptyOrNull,
      tip: components[_NounIndex.tipId] != '-1'
          ? Tip(
              id: int.parse(components[_NounIndex.tipId]),
              isException: components[_NounIndex.tipIsException] == '1',
            )
          : null,
      attempts: 0,
      timesCorrect: 0,
    );
    nouns.add(noun);
    id++;
  }

  return nouns;
}

class _NounIndex {
  static const key = 1;
  static const withoutArticle = 5;
  static const articleIndices = 6;
  static const ambiguousExample = 7;
  static const tipId = 14;
  static const tipIsException = 15;
}

extension on String {
  String? get notEmptyOrNull => isNotEmpty ? this : null;
}
