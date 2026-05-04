import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/l10n/generated/localizations.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/models/game_result.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/features/game/game_screen.dart';
import 'package:der_die_das/features/home/home_screen.dart';
import 'package:der_die_das/features/home/nouns_screen/nouns_screen.dart';
import 'package:der_die_das/features/home/settings_screen/settings_screen.dart';
import 'package:der_die_das/features/home/tips_screen/tips_screen.dart';
import 'package:der_die_das/features/loading/loading_screen.dart';
import 'package:der_die_das/features/results/results_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider).toLocale();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: appTheme.appBarTheme.systemOverlayStyle!,
      child: MaterialApp.router(
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
        scrollBehavior: _AppScrollBehavior(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: locale,
        theme: appTheme,
        onGenerateTitle: (context) => context.l10n.appTitle,
      ),
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: LoadingScreen.path,
      // builder: (context, state) => const LoadingScreen(),
      pageBuilder: (context, state) => const NoTransitionPage(
        child: LoadingScreen(),
      ),
    ),
    GoRoute(
      path: HomeScreen.path,
      // builder: (context, state) => const HomeScreen(),
      pageBuilder: (context, state) => const NoTransitionPage(
        child: HomeScreen(),
      ),
    ),
    GoRoute(
      path: NounsScreen.path,
      // builder: (context, state) => const NounsScreen(),
      pageBuilder: (context, state) => const NoTransitionPage(
        child: NounsScreen(),
      ),
    ),
    GoRoute(
      path: TipsScreen.path,
      // builder: (context, state) => const TipsScreen(),
      pageBuilder: (context, state) => const NoTransitionPage(
        child: TipsScreen(),
      ),
    ),
    GoRoute(
      path: SettingsScreen.path,
      // builder: (context, state) => const SettingsScreen(),
      pageBuilder: (context, state) => const NoTransitionPage(
        child: SettingsScreen(),
      ),
    ),
    GoRoute(
      path: GameScreen.path,
      // builder: (context, state) => const GameScreen(),
      pageBuilder: (context, state) => const NoTransitionPage(
        child: GameScreen(),
      ),
    ),
    GoRoute(
      path: ResultsScreen.path,
      // builder: (context, state) => ResultsScreen(
      //   result: state.extra as GameResult,
      // ),
      pageBuilder: (context, state) => NoTransitionPage(
        child: ResultsScreen(
          result: state.extra as GameResult,
        ),
      ),
    ),
  ],
);

class _AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}
