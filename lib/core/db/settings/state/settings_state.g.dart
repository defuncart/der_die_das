// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(settingsService)
const settingsServiceProvider = SettingsServiceProvider._();

final class SettingsServiceProvider extends $FunctionalProvider<ISettingsService, ISettingsService, ISettingsService>
    with $Provider<ISettingsService> {
  const SettingsServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingsServiceProvider',
        isAutoDispose: true,
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

String _$settingsServiceHash() => r'e658fddec33f128bd59e68bf761072afcc522e70';

@ProviderFor(LanguageController)
const languageControllerProvider = LanguageControllerProvider._();

final class LanguageControllerProvider extends $NotifierProvider<LanguageController, Language> {
  const LanguageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'languageControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$languageControllerHash();

  @$internal
  @override
  LanguageController create() => LanguageController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Language value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Language>(value),
    );
  }
}

String _$languageControllerHash() => r'37e7c37e357451e282efe63f7f5de3c6863876da';

abstract class _$LanguageController extends $Notifier<Language> {
  Language build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Language, Language>;
    final element = ref.element as $ClassProviderElement<AnyNotifier<Language, Language>, Language, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(LevelController)
const levelControllerProvider = LevelControllerProvider._();

final class LevelControllerProvider extends $NotifierProvider<LevelController, Level> {
  const LevelControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'levelControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$levelControllerHash();

  @$internal
  @override
  LevelController create() => LevelController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Level value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Level>(value),
    );
  }
}

String _$levelControllerHash() => r'794ebb6f66527f81e4513c3d265d32c8da0f43f4';

abstract class _$LevelController extends $Notifier<Level> {
  Level build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Level, Level>;
    final element = ref.element as $ClassProviderElement<AnyNotifier<Level, Level>, Level, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(NumberQuestionsController)
const numberQuestionsControllerProvider = NumberQuestionsControllerProvider._();

final class NumberQuestionsControllerProvider extends $NotifierProvider<NumberQuestionsController, NumberQuestions> {
  const NumberQuestionsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'numberQuestionsControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$numberQuestionsControllerHash();

  @$internal
  @override
  NumberQuestionsController create() => NumberQuestionsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NumberQuestions value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NumberQuestions>(value),
    );
  }
}

String _$numberQuestionsControllerHash() => r'eaa1d1a747a1a5932316443c4bc16f9ec5d500f9';

abstract class _$NumberQuestionsController extends $Notifier<NumberQuestions> {
  NumberQuestions build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<NumberQuestions, NumberQuestions>;
    final element =
        ref.element
            as $ClassProviderElement<AnyNotifier<NumberQuestions, NumberQuestions>, NumberQuestions, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ShowTipsController)
const showTipsControllerProvider = ShowTipsControllerProvider._();

final class ShowTipsControllerProvider extends $NotifierProvider<ShowTipsController, bool> {
  const ShowTipsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'showTipsControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$showTipsControllerHash();

  @$internal
  @override
  ShowTipsController create() => ShowTipsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$showTipsControllerHash() => r'3d76b7f7b9e7ba9c0b1a57025b3f4d9959272a70';

abstract class _$ShowTipsController extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element = ref.element as $ClassProviderElement<AnyNotifier<bool, bool>, bool, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(AnswersLayoutController)
const answersLayoutControllerProvider = AnswersLayoutControllerProvider._();

final class AnswersLayoutControllerProvider extends $NotifierProvider<AnswersLayoutController, AnswersLayout> {
  const AnswersLayoutControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'answersLayoutControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$answersLayoutControllerHash();

  @$internal
  @override
  AnswersLayoutController create() => AnswersLayoutController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnswersLayout value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnswersLayout>(value),
    );
  }
}

String _$answersLayoutControllerHash() => r'8a3d79574ab00f97e1f27c741c4b4cd5ed1324a4';

abstract class _$AnswersLayoutController extends $Notifier<AnswersLayout> {
  AnswersLayout build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AnswersLayout, AnswersLayout>;
    final element =
        ref.element
            as $ClassProviderElement<AnyNotifier<AnswersLayout, AnswersLayout>, AnswersLayout, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(SpeechRateController)
const speechRateControllerProvider = SpeechRateControllerProvider._();

final class SpeechRateControllerProvider extends $NotifierProvider<SpeechRateController, SpeechRate> {
  const SpeechRateControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'speechRateControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$speechRateControllerHash();

  @$internal
  @override
  SpeechRateController create() => SpeechRateController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SpeechRate value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SpeechRate>(value),
    );
  }
}

String _$speechRateControllerHash() => r'c5c7e6f49b81bfcf80b061d4e1b964b0d01a90de';

abstract class _$SpeechRateController extends $Notifier<SpeechRate> {
  SpeechRate build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SpeechRate, SpeechRate>;
    final element =
        ref.element as $ClassProviderElement<AnyNotifier<SpeechRate, SpeechRate>, SpeechRate, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(VoiceLevelController)
const voiceLevelControllerProvider = VoiceLevelControllerProvider._();

final class VoiceLevelControllerProvider extends $NotifierProvider<VoiceLevelController, double> {
  const VoiceLevelControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'voiceLevelControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$voiceLevelControllerHash();

  @$internal
  @override
  VoiceLevelController create() => VoiceLevelController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }
}

String _$voiceLevelControllerHash() => r'bb78262b8a6c66d48b9d19249794dd1df337b28c';

abstract class _$VoiceLevelController extends $Notifier<double> {
  double build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<double, double>;
    final element = ref.element as $ClassProviderElement<AnyNotifier<double, double>, double, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(SoundLevelController)
const soundLevelControllerProvider = SoundLevelControllerProvider._();

final class SoundLevelControllerProvider extends $NotifierProvider<SoundLevelController, double> {
  const SoundLevelControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'soundLevelControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$soundLevelControllerHash();

  @$internal
  @override
  SoundLevelController create() => SoundLevelController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }
}

String _$soundLevelControllerHash() => r'8553eff632a82464c51edbfd9052cabd071d1f7e';

abstract class _$SoundLevelController extends $Notifier<double> {
  double build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<double, double>;
    final element = ref.element as $ClassProviderElement<AnyNotifier<double, double>, double, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
