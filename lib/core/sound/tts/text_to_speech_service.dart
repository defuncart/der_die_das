import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';

enum TextToSpeechRate {
  oneQuarter(0.25),
  oneHalf(0.5),
  threeQuarters(0.75),
  standard(1.0),
  oneAndOneQuarter(1.25);

  const TextToSpeechRate(this.value);

  final double value;
}

extension TextToSpeechDoubleExtension on double {
  TextToSpeechRate get asTextToSpeechRate => switch (this) {
        0.25 => TextToSpeechRate.oneQuarter,
        0.5 => TextToSpeechRate.oneHalf,
        0.75 => TextToSpeechRate.threeQuarters,
        1.0 => TextToSpeechRate.standard,
        1.25 => TextToSpeechRate.oneAndOneQuarter,
        _ => throw ArgumentError.value(this),
      };
}

abstract class ITextToSpeechService {
  Future<void> init();
  Future<bool> get isSupported;
  Future<void> speak(String text);
  Future<void> setSpeechRate(TextToSpeechRate rate);
  Future<void> setVolume(double volume);
}

class TextToSpeechService implements ITextToSpeechService {
  TextToSpeechService({
    FlutterTts? tts,
  }) : _tts = tts ?? FlutterTts();

  final FlutterTts _tts;
  late final bool _isSupported;
  TextToSpeechRate? _rate;
  double? _volume;

  @override
  Future<void> init() async {
    // TODO test on non-supported devices
    _isSupported = true;
    await _tts.setLanguage('de-DE');
  }

  @override
  Future<bool> get isSupported async => _isSupported;

  @override
  Future<void> speak(String text) async {
    if (_isSupported) {
      await _tts.speak(text);
    }
  }

  @override
  Future<void> setSpeechRate(TextToSpeechRate rate) async {
    if (rate != _rate) {
      _rate = rate;
      final normalizedRate = rate.value * normalizedPlatformSpeechRate;
      await _tts.setSpeechRate(normalizedRate);
    }
  }

  @override
  Future<void> setVolume(double volume) async {
    if (_volume != volume && volume >= 0 && volume <= 1) {
      _volume = volume;
      await _tts.setVolume(volume);
    }
  }

  /// Speech rate is not uniform across platforms
  /// https://github.com/dlutton/flutter_tts/issues/109
  @visibleForTesting
  double get normalizedPlatformSpeechRate => switch (defaultTargetPlatform) {
        TargetPlatform.android => 0.8,
        TargetPlatform.iOS => 0.6,
        TargetPlatform.macOS => 0.395,
        _ => 1,
      };
}