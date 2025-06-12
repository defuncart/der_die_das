// ignore_for_file: scoped_providers_should_specify_dependencies
import 'package:app_store_screenshots/app_store_screenshots.dart';
import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/nouns_database/models/tip.dart';
import 'package:der_die_das/core/db/nouns_database/state/state.dart';
import 'package:der_die_das/core/db/settings/enums/answers_layout.dart';
import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/l10n/generated/localizations.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/features/game/game_screen.dart';
import 'package:der_die_das/features/game/state/game_state.dart';
import 'package:der_die_das/features/home/nouns_screen/nouns_screen.dart';
import 'package:der_die_das/features/home/tips_screen/tips_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks.dart';

void main() {
  final db = createNounDatabaseFromAssets();
  late MockSettingsService mockSettingsService;

  setUp(() {
    mockSettingsService = MockSettingsService();
  });

  generateAppStoreScreenshots(
    onSetUp: () {
      when(() => mockSettingsService.level).thenReturn(Level.a1);
      when(() => mockSettingsService.showTips).thenReturn(true);
      when(() => mockSettingsService.answersLayout).thenReturn(AnswersLayout.standard);
    },
    config: ScreenshotsConfig(
      devices: [DeviceType.androidPhonePortrait, DeviceType.iOSPhone55Portrait, DeviceType.iOSPhone67Portrait],
      locales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      background: ScreenshotBackground.solid(color: appTheme.colorScheme.primary),
      theme: appTheme,
      foregroundOptions: const ScreenshotForegroundOptions.top(
        textStyle: TextStyle(fontFamily: 'Lato', fontSize: 96, color: Colors.white),
      ),
    ),
    screens: [
      ScreenshotScenario(
        onBuildScreen: () => const Padding(padding: EdgeInsets.only(bottom: 16), child: GameScreen()),
        wrapper: (child) => ProviderScope(
          key: UniqueKey(),
          overrides: [
            settingsServiceProvider.overrideWithValue(mockSettingsService),
            gameStateControllerProvider.overrideWith(
              () => FakeGameStateController(
                state: (
                  progress: 0.5,
                  withoutArticle: 'Straße',
                  ambiguousLabel: null,
                  tip: const Tip(id: 213, isException: false),
                  answeredCorrectly: null,
                  answeredIncorrectly: null,
                  result: null,
                ),
              ),
            ),
          ],
          child: child,
        ),
        onGenerateText: (locale) => switch (locale) {
          const Locale('en') => 'Intuitive gameplay',
          const Locale('de') => 'Intuitives Gameplay',
          const Locale('pl') => 'Intuicyjna gra',
          _ => throw ArgumentError(),
        },
      ),
      ScreenshotScenario(
        onBuildScreen: () => const Padding(padding: EdgeInsets.only(bottom: 16), child: GameScreen()),
        wrapper: (child) => ProviderScope(
          key: UniqueKey(),
          overrides: [
            settingsServiceProvider.overrideWithValue(mockSettingsService),
            gameStateControllerProvider.overrideWith(
              () => FakeGameStateController(
                state: (
                  progress: 0.6,
                  withoutArticle: 'Straße',
                  ambiguousLabel: null,
                  tip: const Tip(id: 213, isException: false),
                  answeredCorrectly: null,
                  answeredIncorrectly: (articles: [Article.die]),
                  result: null,
                ),
              ),
            ),
          ],
          child: child,
        ),
        onGenerateText: (locale) => switch (locale) {
          const Locale('en') => 'Instant feedback',
          const Locale('de') => 'Sofortiges Feedback',
          const Locale('pl') => 'Szybki feedback',
          _ => throw ArgumentError(),
        },
      ),
      ScreenshotScenario(
        onBuildScreen: () => const TipsScreen(),
        onGenerateText: (locale) => switch (locale) {
          const Locale('en') => '30 cunning tips',
          const Locale('de') => '30 schlaue Tipps',
          const Locale('pl') => '30 wskazówek',
          _ => throw ArgumentError(),
        },
      ),
      ScreenshotScenario(
        onBuildScreen: () => const NounsScreen(),
        wrapper: (child) => ProviderScope(
          key: UniqueKey(),
          overrides: [
            settingsServiceProvider.overrideWithValue(mockSettingsService),
            nounDatabaseProvider.overrideWithValue(db),
          ],
          child: child,
        ),
        onPostPumped: (tester) async {
          await tester.enterText(find.byType(TextField), 'Wort');
          await tester.pumpAndSettle();
        },
        onGenerateText: (locale) => switch (locale) {
          const Locale('en') => 'Levels A1 & A2',
          const Locale('de') => 'Stufen A1 & A2',
          const Locale('pl') => 'Poziomy A1 & A2',
          _ => throw ArgumentError(),
        },
      ),
    ],
  );
}
