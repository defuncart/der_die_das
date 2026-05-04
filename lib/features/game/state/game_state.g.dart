// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GameStateNotifier)
final gameStateProvider = GameStateNotifierProvider._();

final class GameStateNotifierProvider extends $AsyncNotifierProvider<GameStateNotifier, GameState> {
  GameStateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameStateNotifierHash();

  @$internal
  @override
  GameStateNotifier create() => GameStateNotifier();
}

String _$gameStateNotifierHash() => r'36ee9c8ac96729538dad7db13c19b0ba4eed9c84';

abstract class _$GameStateNotifier extends $AsyncNotifier<GameState> {
  FutureOr<GameState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<GameState>, GameState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<GameState>, GameState>,
              AsyncValue<GameState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
