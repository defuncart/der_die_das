import 'package:der_die_das/services/nouns_database/services/nouns_database.dart' show Noun;

abstract class INounDatabase {
  Future<List<Noun>> nounsContaining(String text);
}
