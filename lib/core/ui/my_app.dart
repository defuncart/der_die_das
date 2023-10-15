import 'package:der_die_das/core/db/settings/enums/language.dart';
import 'package:der_die_das/core/db/settings/state/settings_state.dart';
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
import 'package:flutter_gen/gen_l10n/localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageControllerProvider).toLocale();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: appTheme.appBarTheme.systemOverlayStyle!,
      child: MaterialApp.router(
        routerConfig: _router,
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
        onGenerateTitle: (context) => context.l10n.appTitle,
      ),
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: LoadingScreen.path,
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: HomeScreen.path,
      pageBuilder: (context, state) => const NoTransitionPage(
        child: HomeScreen(),
      ),
    ),
    GoRoute(
      path: NounsScreen.path,
      builder: (context, state) => const NounsScreen(),
    ),
    GoRoute(
      path: TipsScreen.path,
      builder: (context, state) => const TipsScreen(),
    ),
    GoRoute(
      path: SettingsScreen.path,
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: GameScreen.path,
      builder: (context, state) => const GameScreen(),
    ),
    GoRoute(
      path: ResultsScreen.path,
      builder: (context, state) => ResultsScreen(
        result: state.extra as GameResult,
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
