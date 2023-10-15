import 'package:der_die_das/core/db/nouns_database/services/nouns_database.dart';
import 'package:der_die_das/core/db/nouns_database/state/state.dart';
import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'nouns_state.g.dart';

// @riverpod
// Future<List<Noun>> filterNouns(
//   FilterNounsRef ref, {
//   required String searchTerm,
// }) =>
//     ref.read(nounDatabaseProvider).filterNouns(
//           text: searchTerm,
//         );

// As Noun is a generated type, riverpod_generator creates provider with InvalidType type
final filterNounsProvider = FutureProvider.autoDispose.family<List<Noun>, String>((ref, searchTerm) {
  return ref.read(nounDatabaseProvider).filterNouns(text: searchTerm);
});

final nounsForCurrentLevelProvider = FutureProvider.autoDispose<List<Noun>>((ref) {
  return ref.read(nounDatabaseProvider).filterNouns(level: ref.read(levelControllerProvider));
});
