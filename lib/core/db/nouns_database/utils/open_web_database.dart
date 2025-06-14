import 'package:der_die_das/core/db/nouns_database/utils/import_from_assets.dart';
import 'package:drift/drift.dart';
// ignore: deprecated_member_use
import 'package:drift/web.dart';

QueryExecutor openDatabase() {
  return WebDatabase('db', initializer: importDbFromAssets);
}
