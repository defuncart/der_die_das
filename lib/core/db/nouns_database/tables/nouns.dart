import 'package:der_die_das/core/db/nouns_database/converters/article_list_converter.dart';
import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:drift/drift.dart';

class Nouns extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get withoutArticle => text()();
  TextColumn get withoutArticleNormalized => text()();
  TextColumn get articles => text().map(const ArticleListConverter())();
  IntColumn get level => intEnum<Level>()();
  TextColumn get ambiguousExample => text().nullable()();
  IntColumn get tipId => integer().nullable()();
  IntColumn get attempts => integer().withDefault(const Constant(0))();
  IntColumn get timesCorrect => integer().withDefault(const Constant(0))();
}
