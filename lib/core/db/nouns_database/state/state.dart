import 'package:der_die_das/core/db/nouns_database/services/i_nouns_database.dart';
import 'package:der_die_das/core/db/nouns_database/services/nouns_database.dart';
import 'package:der_die_das/core/db/nouns_database/utils/platform_open_database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state.g.dart';

@Riverpod(keepAlive: true)
INounDatabase nounDatabase(NounDatabaseRef ref) => NounDatabase(platformOpenDatabase());
