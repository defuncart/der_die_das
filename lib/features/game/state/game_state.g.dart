// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameStateControllerHash() => r'df602027329cedbf0b2f7a35255e268ac1a4e96b';

/// See also [GameStateController].
@ProviderFor(GameStateController)
final gameStateControllerProvider = AutoDisposeAsyncNotifierProvider<
    GameStateController,
    ({
      String? ambiguousLabel,
      ({Iterable<Article> articles})? answeredCorrectly,
      ({Iterable<Article> articles})? answeredIncorrectly,
      double progress,
      int? tipId,
      String withoutArticle
    })>.internal(
  GameStateController.new,
  name: r'gameStateControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$gameStateControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GameStateController = AutoDisposeAsyncNotifier<
    ({
      String? ambiguousLabel,
      ({Iterable<Article> articles})? answeredCorrectly,
      ({Iterable<Article> articles})? answeredIncorrectly,
      double progress,
      int? tipId,
      String withoutArticle
    })>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
