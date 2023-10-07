import 'package:der_die_das/core/db/settings/enums/language.dart';
import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/theme/app_theme.dart';
import 'package:der_die_das/features/game/game_screen.dart';
import 'package:der_die_das/features/home/home_screen.dart';
import 'package:der_die_das/features/home/nouns_screen/nouns_screen.dart';
import 'package:der_die_das/features/home/settings_screen/settings_screen.dart';
import 'package:der_die_das/features/home/tips_screen/tips_screen.dart';
import 'package:der_die_das/features/results/results_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:flutter_gen/gen_l10n/localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageControllerProvider).toLocale();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: appTheme.scaffoldBackgroundColor,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: _AppScrollBehavior(),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        locale: locale,
        theme: appTheme,
        onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
        // home: const LoadingScreen(),
        home: const HomeScreen(),
        routes: {
          HomeScreen.routeName: (_) => const HomeScreen(),
          NounsScreen.routeName: (_) => const NounsScreen(),
          TipsScreen.routeName: (_) => const TipsScreen(),
          SettingsScreen.routeName: (_) => const SettingsScreen(),
          GameScreen.routeName: (_) => const GameScreen(),
          ResultsScreen.routeName: (_) => const ResultsScreen(),
        },
      ),
    );
  }
}

class _AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
