import 'dart:io' show File;

import 'package:archive/archive_io.dart';
import 'package:der_die_das/services/nouns_database/services/nouns_database.dart' show Noun, NounDatabase;
import 'package:drift/drift.dart';
import 'package:drift/native.dart';

import 'convert_nouns.dart';

// ignore_for_file: avoid_print

const _outputFilepath = 'assets/db/db.sqlite';
const _outputZipFilepath = 'assets/db/db.zip';

void main() async {
  final nouns = await convertNouns();

  final db = NounDatabase(_openConnection());
  await db.addNouns(nouns);

  print('Written to $_outputFilepath!');

  final encoder = ZipFileEncoder();
  encoder.create(_outputZipFilepath);
  encoder.addFile(File(_outputFilepath));
  encoder.close();

  print('Written to $_outputZipFilepath!');
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final file = File(_outputFilepath);
    if (!file.existsSync()) {
      file.createSync(recursive: true);
    } else {
      file.deleteSync();
      file.createSync(recursive: true);
    }

    return NativeDatabase(file);
  });
}

extension on NounDatabase {
  Future<void> addNouns(List<Noun> multipleNouns) => batch((batch) {
        batch.insertAll(nouns, multipleNouns);
      });
}
