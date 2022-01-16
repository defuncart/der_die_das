import 'package:der_die_das/services/nouns_database/enums/level.dart';
import 'package:drift/drift.dart';

class LevelConverter extends TypeConverter<Level, int> {
  const LevelConverter();

  @override
  Level? mapToDart(int? fromDb) => fromDb != null ? Level.values[fromDb] : null;

  @override
  int? mapToSql(Level? value) => value?.index;
}
