// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tts)
final ttsProvider = TtsProvider._();

final class TtsProvider extends $FunctionalProvider<ITextToSpeechService, ITextToSpeechService, ITextToSpeechService>
    with $Provider<ITextToSpeechService> {
  TtsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ttsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ttsHash();

  @$internal
  @override
  $ProviderElement<ITextToSpeechService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ITextToSpeechService create(Ref ref) {
    return tts(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ITextToSpeechService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ITextToSpeechService>(value),
    );
  }
}

String _$ttsHash() => r'c0bbf69f3a9a363ecf9b4251ae44bcc7a3bcd5c8';

@ProviderFor(sfx)
final sfxProvider = SfxProvider._();

final class SfxProvider extends $FunctionalProvider<ISFXService, ISFXService, ISFXService> with $Provider<ISFXService> {
  SfxProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sfxProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sfxHash();

  @$internal
  @override
  $ProviderElement<ISFXService> $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  ISFXService create(Ref ref) {
    return sfx(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ISFXService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ISFXService>(value),
    );
  }
}

String _$sfxHash() => r'25c6793da9da41d7958b39fe18d5fca980e2483f';
