import 'package:der_die_das/services/nouns_database/services/i_nouns_database.dart';
import 'package:der_die_das/services/nouns_database/services/nouns_database.dart';
import 'package:der_die_das/services/nouns_database/utils/platform_open_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nounDatabaseProvider = Provider<INounDatabase>(
  (_) => NounDatabase(platformOpenDatabase()),
);
