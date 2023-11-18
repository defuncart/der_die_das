// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_settings_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$speakControllerHash() => r'83309a7b0f705d2875b6ec6d7bbb764d609526ae';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [speakController].
@ProviderFor(speakController)
const speakControllerProvider = SpeakControllerFamily();

/// See also [speakController].
class SpeakControllerFamily extends Family<AsyncValue<void>> {
  /// See also [speakController].
  const SpeakControllerFamily();

  /// See also [speakController].
  SpeakControllerProvider call({
    required String text,
  }) {
    return SpeakControllerProvider(
      text: text,
    );
  }

  @override
  SpeakControllerProvider getProviderOverride(
    covariant SpeakControllerProvider provider,
  ) {
    return call(
      text: provider.text,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'speakControllerProvider';
}

/// See also [speakController].
class SpeakControllerProvider extends AutoDisposeFutureProvider<void> {
  /// See also [speakController].
  SpeakControllerProvider({
    required String text,
  }) : this._internal(
          (ref) => speakController(
            ref as SpeakControllerRef,
            text: text,
          ),
          from: speakControllerProvider,
          name: r'speakControllerProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$speakControllerHash,
          dependencies: SpeakControllerFamily._dependencies,
          allTransitiveDependencies: SpeakControllerFamily._allTransitiveDependencies,
          text: text,
        );

  SpeakControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.text,
  }) : super.internal();

  final String text;

  @override
  Override overrideWith(
    FutureOr<void> Function(SpeakControllerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SpeakControllerProvider._internal(
        (ref) => create(ref as SpeakControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        text: text,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SpeakControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SpeakControllerProvider && other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SpeakControllerRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `text` of this provider.
  String get text;
}

class _SpeakControllerProviderElement extends AutoDisposeFutureProviderElement<void> with SpeakControllerRef {
  _SpeakControllerProviderElement(super.provider);

  @override
  String get text => (origin as SpeakControllerProvider).text;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
