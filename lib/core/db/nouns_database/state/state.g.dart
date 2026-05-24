// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(nounDatabase)
final nounDatabaseProvider = NounDatabaseProvider._();

final class NounDatabaseProvider extends $FunctionalProvider<INounDatabase, INounDatabase, INounDatabase>
    with $Provider<INounDatabase> {
  NounDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nounDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nounDatabaseHash();

  @$internal
  @override
  $ProviderElement<INounDatabase> $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  INounDatabase create(Ref ref) {
    return nounDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(INounDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<INounDatabase>(value),
    );
  }
}

String _$nounDatabaseHash() => r'bf844d6dcffda32949ac7c9bf47655e2f0cb3059';
