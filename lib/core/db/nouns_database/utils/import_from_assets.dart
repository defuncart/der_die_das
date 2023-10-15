import 'package:archive/archive.dart';
import 'package:drift/drift.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<Uint8List> importDbFromAssets() async {
  final blob = await rootBundle.load('assets/db/db.zip');

  // consider using flutter_archive for larger dbs (or isolates)
  final archive = ZipDecoder().decodeBytes(blob.buffer.asUint8List());
  return archive.files.first.content;
}
