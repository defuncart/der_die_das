import 'dart:convert';

import 'package:der_die_das/core/db/nouns_database/models/tip.dart';
import 'package:drift/drift.dart';

class TipConverter extends TypeConverter<Tip, String> {
  const TipConverter();

  @override
  Tip fromSql(String fromDb) => Tip.fromJson(json.decode(fromDb));

  @override
  String toSql(Tip value) => json.encode(value.toJson());
}
