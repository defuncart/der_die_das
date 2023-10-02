import 'package:der_die_das/core/theme/app_theme.dart';
import 'package:der_die_das/features/game/game_screen.dart';
import 'package:der_die_das/features/home/favorites_screen/favorites_screen.dart';
import 'package:der_die_das/features/home/home_screen.dart';
import 'package:der_die_das/features/home/nouns_screen/nouns_screen.dart';
import 'package:der_die_das/features/home/settings_screen/settings_screen.dart';
import 'package:der_die_das/features/home/tips_screen/tips_screen.dart';
import 'package:der_die_das/features/loading/loading_screen.dart';
import 'package:der_die_das/features/results/results_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:flutter_gen/gen_l10n/localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        theme: appTheme,
        onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
        home: const LoadingScreen(),
        // home: const HomeScreen(),
        routes: {
          HomeScreen.routeName: (_) => const HomeScreen(),
          NounsScreen.routeName: (_) => const NounsScreen(),
          TipsScreen.routeName: (_) => const TipsScreen(),
          FavoritesScreen.routeName: (_) => const FavoritesScreen(),
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
