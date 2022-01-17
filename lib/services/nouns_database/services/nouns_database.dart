import 'package:der_die_das/services/nouns_database/converters/level_converter.dart';
import 'package:der_die_das/services/nouns_database/enums/level.dart';
import 'package:der_die_das/services/nouns_database/services/i_nouns_database.dart';
import 'package:der_die_das/services/nouns_database/tables/noun.dart';
import 'package:drift/drift.dart';

part 'nouns_database.g.dart';

@DriftDatabase(tables: [Nouns])
class NounDatabase extends _$NounDatabase implements INounDatabase {
  NounDatabase(QueryExecutor openDb) : super(openDb);

  @override
  int get schemaVersion => 1;

  @override
  Future<List<Noun>> nounsContaining(String text) =>
      (select(nouns)..where((noun) => noun.withoutArticle.contains(text))).get();

  @override
  Future<List<Noun>> getNouns({required int count, required Level level}) => (select(nouns)
        ..where((noun) => noun.level.equals(level.index))
        ..orderBy([(n) => OrderingTerm.asc(n.attemps)])
        ..limit(count))
      .get();

  Future<Noun> _getNoun(String key) => (select(nouns)..where((noun) => noun.key.equals(key))).getSingle();

  @override
  Future<void> updateProgress({required String key, required bool answeredCorrectly}) async {
    final noun = await _getNoun(key);
    final attempts = Value(noun.attemps + 1);
    final timesCorrect = answeredCorrectly ? Value(noun.timesCorrect + 1) : const Value<int>.absent();

    (update(nouns)..where((noun) => noun.key.equals(key))).write(
      NounsCompanion(
        attemps: attempts,
        timesCorrect: timesCorrect,
      ),
    );
  }
}
