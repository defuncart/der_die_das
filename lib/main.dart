import 'package:der_die_das/core/ui/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationSupportDirectory();
  Hive.init(dir.path);
  await Hive.openBox('settings');

  runApp(const ProviderScope(child: MyApp()));
}
