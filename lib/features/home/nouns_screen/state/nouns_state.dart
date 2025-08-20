import 'package:der_die_das/core/db/nouns_database/services/nouns_database.dart';
import 'package:der_die_das/core/db/nouns_database/state/state.dart';
import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nouns_state.g.dart';

@riverpod
Future<List<Noun>> filterNouns(
  Ref ref, {
  required String searchTerm,
}) => ref
    .read(nounDatabaseProvider)
    .filterNouns(
      text: searchTerm,
    );

@riverpod
Future<List<Noun>> nounsForCurrentLevel(Ref ref) async =>
    ref.read(nounDatabaseProvider).filterNouns(level: ref.read(levelControllerProvider));
