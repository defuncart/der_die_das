import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/theme/app_theme.dart';
import 'package:der_die_das/core/ui/common/rounded_rectangle.dart';
import 'package:der_die_das/features/game/game_screen.dart';
import 'package:der_die_das/features/home/favorites_screen/favorites_screen.dart';
import 'package:der_die_das/features/home/nouns_screen/nouns_screen.dart';
import 'package:der_die_das/features/home/settings_screen/settings_screen.dart';
import 'package:der_die_das/features/home/tips_screen/tips_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.appTitle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(builder: (context, constraints) {
          final playButtonSize = constraints.maxWidth * 0.5;
          final otherButtonsSize = playButtonSize * 0.6;
          final spacer = constraints.maxHeight * 0.1;

          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _SquareButton(
                  size: playButtonSize,
                  color: context.customColorScheme.green,
                  icon: Icons.play_arrow,
                  routeName: GameScreen.routeName,
                ),
                Gap(spacer),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _SquareButton(
                      size: otherButtonsSize,
                      color: context.customColorScheme.defaultButton,
                      icon: Icons.search,
                      routeName: NounsScreen.routeName,
                    ),
                    _SquareButton(
                      size: otherButtonsSize,
                      color: context.customColorScheme.defaultButton,
                      icon: Icons.lightbulb_outline,
                      routeName: TipsScreen.routeName,
                    ),
                  ].intersperse(Gap(spacer * 0.5)),
                ),
                Gap(spacer * 0.5),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _SquareButton(
                      size: otherButtonsSize,
                      color: context.customColorScheme.defaultButton,
                      icon: Icons.favorite_outline,
                      routeName: FavoritesScreen.routeName,
                    ),
                    _SquareButton(
                      size: otherButtonsSize,
                      color: context.customColorScheme.defaultButton,
                      icon: Icons.settings,
                      routeName: SettingsScreen.routeName,
                    ),
                  ].intersperse(Gap(spacer * 0.5)),
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
    required this.routeName,
    Key? key,
  }) : super(key: key);

  final double size;
  final Color color;
  final IconData icon;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(routeName),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: RoundedRectangle(
          width: size,
          height: size,
          color: color,
          child: Icon(
            icon,
            size: size * 0.6,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}
