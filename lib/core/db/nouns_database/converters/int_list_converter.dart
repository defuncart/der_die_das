import 'dart:convert';

import 'package:der_die_das/core/db/nouns_database/utils/equal_list.dart';
import 'package:drift/drift.dart';

class IntListConverter extends TypeConverter<EqualList<int>, String> {
  const IntListConverter();

  @override
  EqualList<int> fromSql(String fromDb) {
    final list = (json.decode(fromDb) as List).cast<int>().toList();
    return EqualList<int>(list);
  }

  @override
  String toSql(EqualList<int> value) => json.encode(value);
}
