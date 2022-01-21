import 'package:der_die_das/services/nouns_database/converters/int_list_converter.dart';
import 'package:der_die_das/services/nouns_database/converters/level_converter.dart';
import 'package:drift/drift.dart';

class Nouns extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get withArticle => text()();
  TextColumn get withoutArticle => text()();
  TextColumn get withoutArticleNormalized => text()();
  TextColumn get articleIndeces => text().map(const IntListConverter())();
  IntColumn get level => integer().map(const LevelConverter())();
  BoolColumn get isAmbiguous => boolean()();
  IntColumn get attemps => integer().withDefault(const Constant(0))();
  IntColumn get timesCorrect => integer().withDefault(const Constant(0))();
}
