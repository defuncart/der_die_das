import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/sound/sfx/sound_effect_service.dart';
import 'package:der_die_das/core/sound/sound_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'package:der_die_das/core/sound/sfx/sound_effect_service.dart' show SFXEffect;

part 'sound_settings_state.g.dart';

@riverpod
Future<void> speakController(Ref ref, {required String text}) async {
  await ref.read(ttsProvider).setSpeechRate(ref.read(speechRateControllerProvider));
  await ref.read(ttsProvider).setVolume(ref.read(voiceLevelControllerProvider));
  await ref.read(ttsProvider).speak(text);
}

@riverpod
Future<void> sfxController(Ref ref, {required SFXEffect effect}) async {
  await ref.read(sfxProvider).setVolume(ref.read(soundLevelControllerProvider));
  await ref.read(sfxProvider).playEffect(effect);
}
