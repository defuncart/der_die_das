import 'package:der_die_das/services/nouns_database/enums/level.dart';
import 'package:drift/drift.dart';

class LevelConverter extends TypeConverter<Level, int> {
  const LevelConverter();

  @override
  Level fromSql(int fromDb) => Level.values[fromDb];

  @override
  int toSql(Level value) => value.index;
}
