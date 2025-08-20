// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_settings_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(speakController)
const speakControllerProvider = SpeakControllerFamily._();

final class SpeakControllerProvider extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const SpeakControllerProvider._({
    required SpeakControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'speakControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$speakControllerHash();

  @override
  String toString() {
    return r'speakControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) => $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as String;
    return speakController(ref, text: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SpeakControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$speakControllerHash() => r'bd1d3d2e33d53c850b4ba422d84bd280a353b6a6';

final class SpeakControllerFamily extends $Family with $FunctionalFamilyOverride<FutureOr<void>, String> {
  const SpeakControllerFamily._()
    : super(
        retry: null,
        name: r'speakControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SpeakControllerProvider call({required String text}) => SpeakControllerProvider._(argument: text, from: this);

  @override
  String toString() => r'speakControllerProvider';
}

@ProviderFor(sfxController)
const sfxControllerProvider = SfxControllerFamily._();

final class SfxControllerProvider extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const SfxControllerProvider._({
    required SfxControllerFamily super.from,
    required SFXEffect super.argument,
  }) : super(
         retry: null,
         name: r'sfxControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$sfxControllerHash();

  @override
  String toString() {
    return r'sfxControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) => $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as SFXEffect;
    return sfxController(ref, effect: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SfxControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$sfxControllerHash() => r'1104ea951ef9f7b433986e17af26dded2a6c98ff';

final class SfxControllerFamily extends $Family with $FunctionalFamilyOverride<FutureOr<void>, SFXEffect> {
  const SfxControllerFamily._()
    : super(
        retry: null,
        name: r'sfxControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SfxControllerProvider call({required SFXEffect effect}) => SfxControllerProvider._(argument: effect, from: this);

  @override
  String toString() => r'sfxControllerProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
