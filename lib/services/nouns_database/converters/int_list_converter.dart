import 'dart:convert';

import 'package:der_die_das/services/nouns_database/utils/equal_list.dart';
import 'package:drift/drift.dart';

class IntListConverter extends TypeConverter<EqualList<int>, String> {
  const IntListConverter();

  @override
  EqualList<int>? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return EqualList(const <int>[]);
    }

    final list = (json.decode(fromDb) as List).cast<int>().toList();
    return EqualList<int>(list);
  }

  @override
  String? mapToSql(EqualList<int>? value) => value == null ? null : json.encode(value);
}
