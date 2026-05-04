import 'dart:io';

import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/db/nouns_database/services/i_nouns_database.dart';
import 'package:der_die_das/core/db/nouns_database/services/nouns_database.dart';
import 'package:der_die_das/core/db/settings/services/settings_service.dart';
import 'package:der_die_das/features/game/state/game_state.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:mocktail/mocktail.dart';

class MockSettingsService extends Mock implements ISettingsService {}

class FakeGameStateNotifier extends GameStateNotifier {
  FakeGameStateNotifier({required GameState state}) : _state = state;

  final GameState _state;

  @override
  Future<GameState> build() async => _state;

  @override
  void onAnswer(Article answer) {}

  @override
  void onContinue() {}
}

INounDatabase createNounDatabaseFromAssets() => NounDatabase(_openDatabase());

QueryExecutor _openDatabase() {
  return LazyDatabase(() async {
    final dbFile = File('assets/db/db.sqlite');
    return NativeDatabase(dbFile);
  });
}
