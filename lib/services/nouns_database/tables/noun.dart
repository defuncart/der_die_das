import 'package:der_die_das/services/nouns_database/converters/level_converter.dart';
import 'package:drift/drift.dart';

class Nouns extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get withArticle => text()();
  TextColumn get withoutArticle => text()();
  IntColumn get level => integer().map(const LevelConverter())();
  BoolColumn get isAmbiguous => boolean()();
}
