import 'package:der_die_das/core/db/nouns_database/converters/article_list_converter.dart';
import 'package:der_die_das/core/db/nouns_database/converters/tip_converter.dart';
import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/nouns_database/models/tip.dart';
import 'package:der_die_das/core/db/nouns_database/services/i_nouns_database.dart';
import 'package:der_die_das/core/db/nouns_database/tables/nouns.dart';
import 'package:der_die_das/core/db/nouns_database/utils/equal_list.dart';
import 'package:der_die_das/core/extensions/normaize_string_extensions.dart';
import 'package:drift/drift.dart';

part 'nouns_database.g.dart';

@DriftDatabase(tables: [Nouns])
class NounDatabase extends _$NounDatabase implements INounDatabase {
  NounDatabase(super.openDb);

  @override
  int get schemaVersion => 1;

  @override
  Future<List<Noun>> nounsContaining(String text) =>
      (select(nouns)..where((noun) => noun.withoutArticle.contains(text))).get();

  @override
  Future<List<Noun>> getNouns({required int count, required Level level}) async {
    final levelNouns =
        await (select(nouns)
              ..where((noun) => noun.level.equals(level.index))
              ..orderBy([(n) => OrderingTerm.asc(n.attempts)]))
            .get();
    levelNouns.shuffle();
    return levelNouns.take(count).toList();
  }

  @override
  Future<List<Noun>> filterNouns({String? text, Level? level}) {
    assert(text != null || level != null);

    if (text != null && level != null) {
      return (select(nouns)
            ..where((noun) => noun.withoutArticleNormalized.contains(text.normalized) & noun.level.equals(level.index))
            ..orderBy([(noun) => OrderingTerm.asc(noun.withoutArticle)]))
          .get();
    } else if (text != null) {
      return (select(nouns)
            ..where((noun) => noun.withoutArticleNormalized.contains(text.normalized))
            ..orderBy([(noun) => OrderingTerm.asc(noun.withoutArticle)]))
          .get();
    } else if (level != null) {
      return (select(nouns)
            ..where((noun) => noun.level.equals(level.index))
            ..orderBy([(noun) => OrderingTerm.asc(noun.withoutArticle)]))
          .get();
    }

    return Future.value(<Noun>[]);
  }

  @override
  Future<void> updateProgress({required String key, required bool answeredCorrectly}) async {
    final noun = await _getNoun(key);
    final attempts = Value(noun.attempts + 1);
    final timesCorrect = answeredCorrectly ? Value(noun.timesCorrect + 1) : const Value<int>.absent();

    (update(
      nouns,
    )..where((noun) => noun.key.equals(key))).write(NounsCompanion(attempts: attempts, timesCorrect: timesCorrect));
  }

  Future<Noun> _getNoun(String key) => (select(nouns)..where((noun) => noun.key.equals(key))).getSingle();
}

extension NounExtensions on Noun {
  Iterable<String> get _articleNames => articles.map((article) => article.name);

  String get withArticle => '${_articleNames.join('/')} $withoutArticle';

  String get speak => '${_articleNames.join(' oder ')} $withoutArticle';
}
