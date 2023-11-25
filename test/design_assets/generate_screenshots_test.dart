import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/nouns_database/models/tip.dart';
import 'package:der_die_das/core/db/nouns_database/state/state.dart';
import 'package:der_die_das/core/db/settings/enums/answers_layout.dart';
import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/features/game/game_screen.dart';
import 'package:der_die_das/features/game/state/game_state.dart';
import 'package:der_die_das/features/home/nouns_screen/nouns_screen.dart';
import 'package:der_die_das/features/home/tips_screen/tips_screen.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks.dart';

void main() {
  const generateDesignAssets = bool.fromEnvironment(
    'GENERATE_DESIGN_ASSETS',
    defaultValue: false,
  );

  setUp(() async {
    await loadAppFonts();
  });

  testGoldens('Generate screenshots', (tester) async {
    final db = createNounDatabaseFromAssets();
    final mockSettingsService = MockSettingsService();
    when(() => mockSettingsService.level).thenReturn(Level.a1);
    when(() => mockSettingsService.showTips).thenReturn(true);
    when(() => mockSettingsService.answersLayout).thenReturn(AnswersLayout.standard);

    const locales = [
      Locale('en'),
      Locale('de'),
      Locale('pl'),
    ];
    final devices = [
      (
        'ios',
        const Device(
          name: 'iphone',
          size: Size(1080, 2340),
        ),
        Devices.ios.iPhone13,
      ),
      (
        'android',
        const Device(
          name: 'phone',
          size: Size(1080, 1920),
        ),
        Devices.android.onePlus8Pro
      ),
    ];
    final screens = [
      (
        () => const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: GameScreen(),
            ),
        appTheme.colorScheme.primary,
        [
          settingsServiceProvider.overrideWithValue(mockSettingsService),
          gameStateControllerProvider.overrideWith(() => FakeGameStateController(
                state: (
                  progress: 0.5,
                  withoutArticle: 'Straße',
                  ambiguousLabel: null,
                  tip: const Tip(
                    id: 213,
                    isException: false,
                  ),
                  answeredCorrectly: null,
                  answeredIncorrectly: null,
                  result: null,
                ),
              )),
        ],
        {
          'en': 'Intuitive gameplay',
          'de': 'Intuitives Gameplay',
          'pl': 'Intuicyjna gra',
        },
      ),
      (
        () => const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: GameScreen(),
            ),
        appTheme.colorScheme.primary,
        [
          settingsServiceProvider.overrideWithValue(mockSettingsService),
          gameStateControllerProvider.overrideWith(() => FakeGameStateController(
                state: (
                  progress: 0.6,
                  withoutArticle: 'Straße',
                  ambiguousLabel: null,
                  tip: const Tip(
                    id: 213,
                    isException: false,
                  ),
                  answeredCorrectly: null,
                  answeredIncorrectly: (articles: [Article.die],),
                  result: null,
                ),
              )),
        ],
        {
          'en': 'Instant feedback',
          'de': 'Sofortiges Feedback',
          'pl': 'Szybki feedback',
        },
      ),
      (
        () => const TipsScreen(),
        appTheme.colorScheme.primary,
        <Override>[],
        {
          'en': 'Over 25 useful tips',
          'de': 'Über 25 Tipps',
          'pl': 'Ponad 25 wskazówek',
        },
      ),
      (
        () => const NounsScreen(),
        appTheme.colorScheme.primary,
        [
          settingsServiceProvider.overrideWithValue(mockSettingsService),
          nounDatabaseProvider.overrideWithValue(db),
        ],
        {
          'en': 'Supports A1 & A2',
          'de': 'Stufe A1 & A2',
          'pl': 'Poziom A1 & A2',
        },
      ),
    ];

    for (final screen in screens) {
      final screenshotNumber = screens.indexOf(screen) + 1;
      for (final device in devices) {
        for (final locale in locales) {
          await takeScreenshot(
            tester: tester,
            widget: createScreenshot(
              backgroundColor: screen.$2,
              text: screen.$4[locale.languageCode],
              screenContents: screen.$1(),
              overrides: screen.$3,
              locale: locale,
              phoneFrameDevice: device.$3,
              height: device.$2.size.height,
            ),
            name: '${device.$1}/${locale.languageCode}/screenshot_$screenshotNumber',
            device: device.$2,
          );
        }
      }
    }
  }, skip: !generateDesignAssets);
}

Widget createScreenshot({
  required Color backgroundColor,
  String? text,
  required Widget screenContents,
  required Locale locale,
  required DeviceInfo phoneFrameDevice,
  required double height,
  List<Override> overrides = const [],
}) =>
    Container(
      height: height,
      color: backgroundColor,
      padding: const EdgeInsets.all(48),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (text != null)
            Text(
              text,
              style: const TextStyle(
                fontFamily: 'Lato',
                fontSize: 96,
                color: Colors.white,
              ),
            ),
          SizedBox(
            height: text != null ? height * 0.83 : null,
            child: DeviceFrame(
              device: phoneFrameDevice,
              isFrameVisible: true,
              orientation: Orientation.portrait,
              screen: ProviderScope(
                key: UniqueKey(),
                overrides: overrides,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  supportedLocales: AppLocalizations.supportedLocales,
                  localizationsDelegates: const [
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    AppLocalizations.delegate,
                  ],
                  locale: locale,
                  theme: appTheme,
                  home: Scaffold(
                    body: screenContents,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

Future<void> takeScreenshot({
  required WidgetTester tester,
  required Widget widget,
  required String name,
  required Device device,
  CustomPump? customPump,
}) async {
  await tester.pumpWidgetBuilder(
    widget,
    surfaceSize: device.size,
  );
  await screenMatchesGolden(tester, 'screenshots/$name');
}
