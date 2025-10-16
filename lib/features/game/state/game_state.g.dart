// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GameStateController)
const gameStateControllerProvider = GameStateControllerProvider._();

final class GameStateControllerProvider
    extends $AsyncNotifierProvider<GameStateController, GameState> {
  const GameStateControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameStateControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameStateControllerHash();

  @$internal
  @override
  GameStateController create() => GameStateController();
}

String _$gameStateControllerHash() =>
    r'465753f1a5630c2bff03d9e00e0562b2332579ff';

abstract class _$GameStateController extends $AsyncNotifier<GameState> {
  FutureOr<GameState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<GameState>, GameState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<GameState>, GameState>,
              AsyncValue<GameState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
