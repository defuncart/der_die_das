import 'package:der_die_das/extensions/normaize_string_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NormalizeStringExtensions', () {
    test('when ä, expect a', () {
      expect('ä'.normalized, 'a');
      expect('Ä'.normalized, 'a');
    });

    test('when ö, expect o', () {
      expect('ö'.normalized, 'o');
      expect('Ö'.normalized, 'o');
    });

    test('when ü, expect u', () {
      expect('ü'.normalized, 'u');
      expect('Ü'.normalized, 'u');
    });

    test('when ß, expect ss', () {
      expect('ß'.normalized, 'ss');
      expect('ẞ'.normalized, 'ss');
    });
  });
}
