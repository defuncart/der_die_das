import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/sound/sound_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sound_settings_state.g.dart';

@riverpod
Future<void> speakController(
  SpeakControllerRef ref, {
  required String text,
}) async {
  await ref.read(ttsProvider).setSpeechRate(ref.read(speechRateControllerProvider));
  await ref.read(ttsProvider).setVolume(ref.read(voiceLevelControllerProvider));
  await ref.read(ttsProvider).speak(text);
}
