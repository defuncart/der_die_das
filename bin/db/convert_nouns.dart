import 'dart:io';

import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
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
      withArticle: components[_NounIndex.withArticle],
      withoutArticle: components[_NounIndex.withoutArticle],
      withoutArticleNormalized: components[_NounIndex.withoutArticle].normalized,
      level: level,
      articleIndeces:
          EqualList(components[_NounIndex.articleIndeces].split('|').map((article) => int.parse(article)).toList()),
      isAmbiguous: components[_NounIndex.isAmbiguous] == '1',
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
  static const withArticle = 2;
  static const withoutArticle = 5;
  static const articleIndeces = 6;
  static const isAmbiguous = 8;
}
