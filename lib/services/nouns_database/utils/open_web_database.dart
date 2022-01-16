import 'package:der_die_das/services/nouns_database/utils/import_from_assets.dart';
import 'package:drift/drift.dart';
import 'package:drift/web.dart';

QueryExecutor openDatabase() {
  return WebDatabase('db', initializer: importDbFromAssets);
}
