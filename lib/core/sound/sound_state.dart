import 'package:der_die_das/core/sound/tts/text_to_speech_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sound_state.g.dart';

@Riverpod(keepAlive: true)
ITextToSpeechService tts(TtsRef ref) => TextToSpeechService();
