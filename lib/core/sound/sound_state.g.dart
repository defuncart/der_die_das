// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ttsService)
final ttsServiceProvider = TtsServiceProvider._();

final class TtsServiceProvider
    extends $FunctionalProvider<ITextToSpeechService, ITextToSpeechService, ITextToSpeechService>
    with $Provider<ITextToSpeechService> {
  TtsServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ttsServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ttsServiceHash();

  @$internal
  @override
  $ProviderElement<ITextToSpeechService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ITextToSpeechService create(Ref ref) {
    return ttsService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ITextToSpeechService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ITextToSpeechService>(value),
    );
  }
}

String _$ttsServiceHash() => r'd5a61117828c2f47557c5004342ad11cd1fbc240';

@ProviderFor(sfxService)
final sfxServiceProvider = SfxServiceProvider._();

final class SfxServiceProvider extends $FunctionalProvider<ISFXService, ISFXService, ISFXService>
    with $Provider<ISFXService> {
  SfxServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sfxServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sfxServiceHash();

  @$internal
  @override
  $ProviderElement<ISFXService> $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  ISFXService create(Ref ref) {
    return sfxService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ISFXService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ISFXService>(value),
    );
  }
}

String _$sfxServiceHash() => r'ffc049955b628190508d02cd149b4af1e9849670';
