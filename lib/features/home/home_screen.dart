import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/theme/app_theme.dart';
import 'package:der_die_das/core/ui/common/article_button.dart';
import 'package:der_die_das/core/ui/common/basic_button.dart';
import 'package:der_die_das/core/ui/common/rounded_square.dart';
import 'package:der_die_das/features/game/game_screen.dart';
import 'package:der_die_das/features/home/nouns_screen/nouns_screen.dart';
import 'package:der_die_das/features/home/settings_screen/settings_screen.dart';
import 'package:der_die_das/features/home/tips_screen/tips_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(builder: (context, constraints) {
          final playButtonSize = constraints.maxWidth * 0.5;
          final otherButtonsSize = playButtonSize * 0.6;

          final articleWidth = constraints.maxWidth * 0.25;
          final articleHeight = articleWidth * 0.5;
          final articleFontSize = articleHeight * 0.75;

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: Article.values
                      .map(
                        (article) => ArticleButton(
                          article: article,
                          width: articleWidth,
                          height: articleHeight,
                          fontSize: articleFontSize,
                          borderRadius: context.customRadii.xs,
                        ),
                      )
                      .toList(),
                ),
                _SquareButton(
                  size: playButtonSize,
                  color: context.customColorScheme.green,
                  icon: Icons.play_arrow,
                  routeName: GameScreen.routeName,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    _SquareButton(
                      size: otherButtonsSize,
                      color: context.customColorScheme.defaultButton,
                      icon: Icons.settings,
                      routeName: SettingsScreen.routeName,
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
    required this.routeName,
    Key? key,
  }) : super(key: key);

  final double size;
  final Color color;
  final IconData icon;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return BasicButton(
      onTap: () => Navigator.of(context).pushNamed(routeName),
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
