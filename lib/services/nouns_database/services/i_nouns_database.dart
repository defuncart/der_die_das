import 'package:der_die_das/services/nouns_database/enums/level.dart';
import 'package:der_die_das/services/nouns_database/services/nouns_database.dart' show Noun;

abstract class INounDatabase {
  Future<List<Noun>> nounsContaining(String text);
  Future<List<Noun>> getNouns({required int count, required Level level});
  Future<void> updateProgress({required String key, required bool answeredCorrectly});
}
