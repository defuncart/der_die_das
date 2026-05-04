// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(settingsService)
final settingsServiceProvider = SettingsServiceProvider._();

final class SettingsServiceProvider extends $FunctionalProvider<ISettingsService, ISettingsService, ISettingsService>
    with $Provider<ISettingsService> {
  SettingsServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingsServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingsServiceHash();

  @$internal
  @override
  $ProviderElement<ISettingsService> $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  ISettingsService create(Ref ref) {
    return settingsService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ISettingsService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ISettingsService>(value),
    );
  }
}

String _$settingsServiceHash() => r'01ab474a43eacb1538372b02c9d1856f9f556b16';

@ProviderFor(LanguageNotifier)
final languageProvider = LanguageNotifierProvider._();

final class LanguageNotifierProvider extends $NotifierProvider<LanguageNotifier, Language> {
  LanguageNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'languageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$languageNotifierHash();

  @$internal
  @override
  LanguageNotifier create() => LanguageNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Language value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Language>(value),
    );
  }
}

String _$languageNotifierHash() => r'73200652d8241606853c192949fe258122bcf9b9';

abstract class _$LanguageNotifier extends $Notifier<Language> {
  Language build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Language, Language>;
    final element = ref.element as $ClassProviderElement<AnyNotifier<Language, Language>, Language, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(LevelNotifier)
final levelProvider = LevelNotifierProvider._();

final class LevelNotifierProvider extends $NotifierProvider<LevelNotifier, Level> {
  LevelNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'levelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$levelNotifierHash();

  @$internal
  @override
  LevelNotifier create() => LevelNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Level value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Level>(value),
    );
  }
}

String _$levelNotifierHash() => r'2ef85747edbc008729c3226ca4e91a8ad46909e5';

abstract class _$LevelNotifier extends $Notifier<Level> {
  Level build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Level, Level>;
    final element = ref.element as $ClassProviderElement<AnyNotifier<Level, Level>, Level, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(NumberQuestionsNotifier)
final numberQuestionsProvider = NumberQuestionsNotifierProvider._();

final class NumberQuestionsNotifierProvider extends $NotifierProvider<NumberQuestionsNotifier, NumberQuestions> {
  NumberQuestionsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'numberQuestionsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$numberQuestionsNotifierHash();

  @$internal
  @override
  NumberQuestionsNotifier create() => NumberQuestionsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NumberQuestions value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NumberQuestions>(value),
    );
  }
}

String _$numberQuestionsNotifierHash() => r'c79c540c6cd9a16b521c5abb02185344d6a823be';

abstract class _$NumberQuestionsNotifier extends $Notifier<NumberQuestions> {
  NumberQuestions build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<NumberQuestions, NumberQuestions>;
    final element =
        ref.element
            as $ClassProviderElement<AnyNotifier<NumberQuestions, NumberQuestions>, NumberQuestions, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(ShowTipsNotifier)
final showTipsProvider = ShowTipsNotifierProvider._();

final class ShowTipsNotifierProvider extends $NotifierProvider<ShowTipsNotifier, bool> {
  ShowTipsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'showTipsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$showTipsNotifierHash();

  @$internal
  @override
  ShowTipsNotifier create() => ShowTipsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$showTipsNotifierHash() => r'f89f95f491e14f4c5c25af8f101c83b6e30b8fe6';

abstract class _$ShowTipsNotifier extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element = ref.element as $ClassProviderElement<AnyNotifier<bool, bool>, bool, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(AnswersLayoutNotifier)
final answersLayoutProvider = AnswersLayoutNotifierProvider._();

final class AnswersLayoutNotifierProvider extends $NotifierProvider<AnswersLayoutNotifier, AnswersLayout> {
  AnswersLayoutNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'answersLayoutProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$answersLayoutNotifierHash();

  @$internal
  @override
  AnswersLayoutNotifier create() => AnswersLayoutNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnswersLayout value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnswersLayout>(value),
    );
  }
}

String _$answersLayoutNotifierHash() => r'c8dd9742332b5ecfd0e26047969c333a711dc8b0';

abstract class _$AnswersLayoutNotifier extends $Notifier<AnswersLayout> {
  AnswersLayout build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AnswersLayout, AnswersLayout>;
    final element =
        ref.element
            as $ClassProviderElement<AnyNotifier<AnswersLayout, AnswersLayout>, AnswersLayout, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SpeechRateNotifier)
final speechRateProvider = SpeechRateNotifierProvider._();

final class SpeechRateNotifierProvider extends $NotifierProvider<SpeechRateNotifier, SpeechRate> {
  SpeechRateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'speechRateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$speechRateNotifierHash();

  @$internal
  @override
  SpeechRateNotifier create() => SpeechRateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SpeechRate value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SpeechRate>(value),
    );
  }
}

String _$speechRateNotifierHash() => r'74fc3387a8dbd86383c6c03fa9298cc44e6394e6';

abstract class _$SpeechRateNotifier extends $Notifier<SpeechRate> {
  SpeechRate build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SpeechRate, SpeechRate>;
    final element =
        ref.element as $ClassProviderElement<AnyNotifier<SpeechRate, SpeechRate>, SpeechRate, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(VoiceLevelNotifier)
final voiceLevelProvider = VoiceLevelNotifierProvider._();

final class VoiceLevelNotifierProvider extends $NotifierProvider<VoiceLevelNotifier, double> {
  VoiceLevelNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'voiceLevelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$voiceLevelNotifierHash();

  @$internal
  @override
  VoiceLevelNotifier create() => VoiceLevelNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }
}

String _$voiceLevelNotifierHash() => r'59709d8ce784c1a4cf330d567636253b43dc1d7f';

abstract class _$VoiceLevelNotifier extends $Notifier<double> {
  double build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<double, double>;
    final element = ref.element as $ClassProviderElement<AnyNotifier<double, double>, double, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SoundLevelNotifier)
final soundLevelProvider = SoundLevelNotifierProvider._();

final class SoundLevelNotifierProvider extends $NotifierProvider<SoundLevelNotifier, double> {
  SoundLevelNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'soundLevelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$soundLevelNotifierHash();

  @$internal
  @override
  SoundLevelNotifier create() => SoundLevelNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }
}

String _$soundLevelNotifierHash() => r'8294bf8b170dc88cc459aec164edc2677b2879c0';

abstract class _$SoundLevelNotifier extends $Notifier<double> {
  double build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<double, double>;
    final element = ref.element as $ClassProviderElement<AnyNotifier<double, double>, double, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}
