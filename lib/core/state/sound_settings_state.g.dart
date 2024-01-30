// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_settings_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$speakControllerHash() => r'9010823037a266b9d9fbef5eb4742edb8adc881a';

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

String _$sfxControllerHash() => r'a45d38e0a337d1256405fd3a85b54fe3a698289c';

/// See also [sfxController].
@ProviderFor(sfxController)
const sfxControllerProvider = SfxControllerFamily();

/// See also [sfxController].
class SfxControllerFamily extends Family<AsyncValue<void>> {
  /// See also [sfxController].
  const SfxControllerFamily();

  /// See also [sfxController].
  SfxControllerProvider call({
    required SFXEffect effect,
  }) {
    return SfxControllerProvider(
      effect: effect,
    );
  }

  @override
  SfxControllerProvider getProviderOverride(
    covariant SfxControllerProvider provider,
  ) {
    return call(
      effect: provider.effect,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'sfxControllerProvider';
}

/// See also [sfxController].
class SfxControllerProvider extends AutoDisposeFutureProvider<void> {
  /// See also [sfxController].
  SfxControllerProvider({
    required SFXEffect effect,
  }) : this._internal(
          (ref) => sfxController(
            ref as SfxControllerRef,
            effect: effect,
          ),
          from: sfxControllerProvider,
          name: r'sfxControllerProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$sfxControllerHash,
          dependencies: SfxControllerFamily._dependencies,
          allTransitiveDependencies: SfxControllerFamily._allTransitiveDependencies,
          effect: effect,
        );

  SfxControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.effect,
  }) : super.internal();

  final SFXEffect effect;

  @override
  Override overrideWith(
    FutureOr<void> Function(SfxControllerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SfxControllerProvider._internal(
        (ref) => create(ref as SfxControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        effect: effect,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SfxControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SfxControllerProvider && other.effect == effect;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, effect.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SfxControllerRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `effect` of this provider.
  SFXEffect get effect;
}

class _SfxControllerProviderElement extends AutoDisposeFutureProviderElement<void> with SfxControllerRef {
  _SfxControllerProviderElement(super.provider);

  @override
  SFXEffect get effect => (origin as SfxControllerProvider).effect;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
