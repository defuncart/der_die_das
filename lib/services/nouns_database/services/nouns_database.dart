import 'package:der_die_das/services/nouns_database/converters/level_converter.dart';
import 'package:der_die_das/services/nouns_database/enums/level.dart';
import 'package:der_die_das/services/nouns_database/services/i_nouns_database.dart';
import 'package:der_die_das/services/nouns_database/tables/noun.dart';
import 'package:der_die_das/services/nouns_database/utils/platform_open_database.dart';
import 'package:drift/drift.dart';

part 'nouns_database.g.dart';

@DriftDatabase(tables: [Nouns])
class NounDatabase extends _$NounDatabase implements INounDatabase {
  NounDatabase([QueryExecutor? createDb]) : super(createDb ?? platformOpenDatabase());

  @override
  int get schemaVersion => 1;

  @override
  Future<List<Noun>> nounsContaining(String text) =>
      (select(nouns)..where((noun) => noun.withoutArticle.contains(text))).get();
}
