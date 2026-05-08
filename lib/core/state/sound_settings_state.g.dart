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

String _$speakNotifierHash() => r'8d12c5ffb9b0fe496a64da250ec43404b9da7bae';

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
