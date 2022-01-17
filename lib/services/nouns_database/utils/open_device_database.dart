import 'dart:io' show File, Platform;

import 'package:der_die_das/services/nouns_database/utils/import_from_assets.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

QueryExecutor openDatabase() {
  return LazyDatabase(() async {
    final dbFilepath = await _dbFilepath;
    final dbFile = File(dbFilepath);
    if (!dbFile.existsSync()) {
      final bytes = await importDbFromAssets();

      await dbFile.writeAsBytes(bytes);
    }

    return NativeDatabase(dbFile);
  });
}

Future<String> get _dbFilepath async {
  String dir;
  if (Platform.isIOS) {
    dir = (await getApplicationSupportDirectory()).path;
  } else {
    dir = (await getApplicationDocumentsDirectory()).path;
  }

  return join(dir, 'db.sqlite');
}
