import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/sound/sfx/sound_effect_service.dart';
import 'package:der_die_das/core/sound/sound_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'package:der_die_das/core/sound/sfx/sound_effect_service.dart' show SFXEffect;

part 'sound_settings_state.g.dart';

@riverpod
Future<void> speakNotifier(Ref ref, {required String text}) async {
  await ref.read(ttsServiceProvider).setSpeechRate(ref.read(speechRateProvider));
  await ref.read(ttsServiceProvider).setVolume(ref.read(voiceLevelProvider));
  await ref.read(ttsServiceProvider).speak(text);
}

@riverpod
Future<void> sfxNotifier(Ref ref, {required SFXEffect effect}) async {
  await ref.read(sfxServiceProvider).setVolume(ref.read(soundLevelProvider));
  await ref.read(sfxServiceProvider).playEffect(effect);
}
