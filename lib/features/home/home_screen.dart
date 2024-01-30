import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/buttons/basic_button.dart';
import 'package:der_die_das/core/ui/common/icons/der_die_das_horizontal_logo.dart';
import 'package:der_die_das/core/ui/common/rounded_square.dart';
import 'package:der_die_das/features/game/game_screen.dart';
import 'package:der_die_das/features/home/nouns_screen/nouns_screen.dart';
import 'package:der_die_das/features/home/settings_screen/settings_screen.dart';
import 'package:der_die_das/features/home/tips_screen/tips_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const path = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(builder: (context, constraints) {
          final playButtonSize = constraints.maxWidth * 0.5;
          final otherButtonsSize = playButtonSize * 0.6;

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                const DerDieDasHorizontalLogo(),
                _SquareButton(
                  size: playButtonSize,
                  color: context.colorScheme.primary,
                  icon: Icons.play_arrow,
                  path: GameScreen.path,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _SquareButton(
                      size: otherButtonsSize,
                      color: context.customColorScheme.defaultButton,
                      icon: Icons.search,
                      path: NounsScreen.path,
                    ),
                    _SquareButton(
                      size: otherButtonsSize,
                      color: context.customColorScheme.defaultButton,
                      icon: Icons.lightbulb_outline,
                      path: TipsScreen.path,
                    ),
                    _SquareButton(
                      size: otherButtonsSize,
                      color: context.customColorScheme.defaultButton,
                      icon: Icons.settings,
                      path: SettingsScreen.path,
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class _SquareButton extends StatelessWidget {
  const _SquareButton({
    required this.size,
    required this.color,
    required this.icon,
    required this.path,
  });

  final double size;
  final Color color;
  final IconData icon;
  final String path;

  @override
  Widget build(BuildContext context) {
    return BasicButton(
      onPressed: () => context.push(path),
      child: RoundedSquare(
        size: size,
        color: color,
        child: Icon(
          icon,
          size: size * 0.6,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
