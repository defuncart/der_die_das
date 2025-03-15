import 'package:audioplayers/audioplayers.dart';

enum SFXEffect {
  answerCorrect,
  answerIncorrect;

  String get assetPath => 'sfx/$name.wav';
}

abstract class ISFXService {
  Future<void> init();
  Future<void> playEffect(SFXEffect effect);
  Future<void> setVolume(double volume);
}

const _reduceVolumeFactor = 0.125;

class SFXService implements ISFXService {
  late List<AudioPlayer> _players;

  @override
  Future<void> init() async {
    _players =
        SFXEffect.values
            .map(
              (effect) =>
                  AudioPlayer()
                    ..setSource(AssetSource(effect.assetPath))
                    ..setReleaseMode(ReleaseMode.stop),
            )
            .toList();
  }

  @override
  Future<void> playEffect(SFXEffect effect) async {
    await _players[SFXEffect.values.indexOf(effect)].resume();
  }

  @override
  Future<void> setVolume(double volume) async {
    assert(volume >= 0 && volume <= 1);

    for (final player in _players) {
      await player.setVolume(volume * _reduceVolumeFactor);
    }
  }
}
