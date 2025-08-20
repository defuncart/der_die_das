// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nouns_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(filterNouns)
const filterNounsProvider = FilterNounsFamily._();

final class FilterNounsProvider extends $FunctionalProvider<AsyncValue<List<Noun>>, List<Noun>, FutureOr<List<Noun>>>
    with $FutureModifier<List<Noun>>, $FutureProvider<List<Noun>> {
  const FilterNounsProvider._({
    required FilterNounsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'filterNounsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$filterNounsHash();

  @override
  String toString() {
    return r'filterNounsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Noun>> $createElement($ProviderPointer pointer) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Noun>> create(Ref ref) {
    final argument = this.argument as String;
    return filterNouns(ref, searchTerm: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FilterNounsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$filterNounsHash() => r'02c922bc9a0b547c9b4efecd434a675958058e3a';

final class FilterNounsFamily extends $Family with $FunctionalFamilyOverride<FutureOr<List<Noun>>, String> {
  const FilterNounsFamily._()
    : super(
        retry: null,
        name: r'filterNounsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FilterNounsProvider call({required String searchTerm}) => FilterNounsProvider._(argument: searchTerm, from: this);

  @override
  String toString() => r'filterNounsProvider';
}

@ProviderFor(nounsForCurrentLevel)
const nounsForCurrentLevelProvider = NounsForCurrentLevelProvider._();

final class NounsForCurrentLevelProvider
    extends $FunctionalProvider<AsyncValue<List<Noun>>, List<Noun>, FutureOr<List<Noun>>>
    with $FutureModifier<List<Noun>>, $FutureProvider<List<Noun>> {
  const NounsForCurrentLevelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nounsForCurrentLevelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nounsForCurrentLevelHash();

  @$internal
  @override
  $FutureProviderElement<List<Noun>> $createElement($ProviderPointer pointer) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Noun>> create(Ref ref) {
    return nounsForCurrentLevel(ref);
  }
}

String _$nounsForCurrentLevelHash() => r'b0e394e066d19f76bc0c18874865067fea1ce2af';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
