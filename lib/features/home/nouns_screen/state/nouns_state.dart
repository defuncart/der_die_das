import 'package:der_die_das/core/db/nouns_database/services/nouns_database.dart';
import 'package:der_die_das/core/db/nouns_database/state/state.dart';
import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// As Noun is a generated class, riverpod v3 generator has type issues

// part 'nouns_state.g.dart';

// @riverpod
// Future<List<Noun>> filterNouns(
//   Ref ref, {
//   required String searchTerm,
// }) => ref
//     .read(nounDatabaseProvider)
//     .filterNouns(
//       text: searchTerm,
//     );

final filterNounsProvider = FutureProvider.family<List<Noun>, String>(
  (ref, searchTerm) => ref
      .read(nounDatabaseProvider)
      .filterNouns(
        text: searchTerm,
      ),
);

// @riverpod
// Future<List<Noun>> nounsForCurrentLevel(Ref ref) async =>
//     ref.read(nounDatabaseProvider).filterNouns(level: ref.read(levelNotifierProvider));

final nounsForCurrentLevelProvider = FutureProvider<List<Noun>>(
  (ref) => ref.read(nounDatabaseProvider).filterNouns(level: ref.read(levelProvider)),
);
