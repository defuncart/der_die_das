import 'package:flutter_tts/flutter_tts.dart';

abstract class ITextToSpeechService {
  Future<void> init();
  Future<bool> get isSupported;
  Future<void> speak(String text);
}

class TextToSpeechService implements ITextToSpeechService {
  late final FlutterTts _tts;
  late final bool _isSupported;

  @override
  Future<void> init() async {
    _tts = FlutterTts();
    // TODO test on non-supported devices
    _isSupported = true;
    await _tts.setLanguage("de-DE");
  }

  @override
  Future<bool> get isSupported async => _isSupported;

  @override
  Future<void> speak(String text) async {
    if (_isSupported) {
      await _tts.speak(text);
    }
  }
}
