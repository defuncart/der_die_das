// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_settings_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(speakNotifier)
final speakProvider = SpeakNotifierFamily._();

final class SpeakNotifierProvider extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  SpeakNotifierProvider._({
    required SpeakNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'speakProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$speakNotifierHash();

  @override
  String toString() {
    return r'speakProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) => $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as String;
    return speakNotifier(ref, text: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SpeakNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$speakNotifierHash() => r'd91b7567698d80988cc7c0c0e6db773be80e0185';

final class SpeakNotifierFamily extends $Family with $FunctionalFamilyOverride<FutureOr<void>, String> {
  SpeakNotifierFamily._()
    : super(
        retry: null,
        name: r'speakProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SpeakNotifierProvider call({required String text}) => SpeakNotifierProvider._(argument: text, from: this);

  @override
  String toString() => r'speakProvider';
}

@ProviderFor(sfxNotifier)
final sfxProvider = SfxNotifierFamily._();

final class SfxNotifierProvider extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  SfxNotifierProvider._({
    required SfxNotifierFamily super.from,
    required SFXEffect super.argument,
  }) : super(
         retry: null,
         name: r'sfxProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$sfxNotifierHash();

  @override
  String toString() {
    return r'sfxProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) => $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as SFXEffect;
    return sfxNotifier(ref, effect: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SfxNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$sfxNotifierHash() => r'b43ac687d79d927930515823ed3ed87f66acc1c1';

final class SfxNotifierFamily extends $Family with $FunctionalFamilyOverride<FutureOr<void>, SFXEffect> {
  SfxNotifierFamily._()
    : super(
        retry: null,
        name: r'sfxProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SfxNotifierProvider call({required SFXEffect effect}) => SfxNotifierProvider._(argument: effect, from: this);

  @override
  String toString() => r'sfxProvider';
}
