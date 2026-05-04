import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/sound/sound_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'package:der_die_das/core/sound/sfx/sound_effect_service.dart' show SFXEffect;

extension SpeakExtensions on Ref {
  Future<void> speak(String text) async {
    await read(ttsServiceProvider).setSpeechRate(read(speechRateProvider));
    await read(ttsServiceProvider).setVolume(read(voiceLevelProvider));
    await read(ttsServiceProvider).speak(text);
  }
}

extension SpeakExtensionsWidgetRef on WidgetRef {
  Future<void> speak(String text) async {
    await read(ttsServiceProvider).setSpeechRate(read(speechRateProvider));
    await read(ttsServiceProvider).setVolume(read(voiceLevelProvider));
    await read(ttsServiceProvider).speak(text);
  }
}
