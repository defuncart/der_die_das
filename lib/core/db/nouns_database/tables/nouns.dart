import 'package:der_die_das/core/db/nouns_database/converters/article_list_converter.dart';
import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:drift/drift.dart';

class Nouns extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get withArticle => text()();
  TextColumn get withoutArticle => text()();
  TextColumn get withoutArticleNormalized => text()();
  TextColumn get articles => text().map(const ArticleListConverter())();
  IntColumn get level => intEnum<Level>()();
  BoolColumn get isAmbiguous => boolean()();
  IntColumn get attempts => integer().withDefault(const Constant(0))();
  IntColumn get timesCorrect => integer().withDefault(const Constant(0))();
}
