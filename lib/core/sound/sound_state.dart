import 'package:der_die_das/core/sound/sfx/sound_effect_service.dart';
import 'package:der_die_das/core/sound/tts/text_to_speech_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sound_state.g.dart';

@Riverpod(keepAlive: true)
ITextToSpeechService tts(Ref ref) => TextToSpeechService();

@Riverpod(keepAlive: true)
ISFXService sfx(Ref ref) => SFXService();
