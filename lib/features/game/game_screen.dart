import 'package:auto_size_text/auto_size_text.dart';
import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/extensions/theme_extensions.dart';
import 'package:der_die_das/core/theme/app_theme.dart';
import 'package:der_die_das/core/ui/common/basic_material_close_button.dart';
import 'package:der_die_das/core/ui/common/basic_material_icon_button.dart';
import 'package:der_die_das/core/ui/common/rounded_rectangle.dart';
import 'package:der_die_das/features/results/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GameScreen extends StatelessWidget {
  static const routeName = 'GameScreen';

  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BasicMaterialCloseButton(),
        title: LayoutBuilder(
          builder: (_, boxConstraints) {
            const percent = 0.75;

            return SizedBox(
              height: 12,
              child: Stack(
                children: [
                  Container(
                    width: boxConstraints.maxWidth,
                    decoration: BoxDecoration(
                      // color: Color(0xffd3d3d3),
                      color: context.colorScheme.primary.withOpacity(0.25),
                      borderRadius: context.customRadii.s,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: boxConstraints.maxWidth * percent,
                    decoration: BoxDecoration(
                      color: context.colorScheme.primary,
                      borderRadius: context.customRadii.s,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        actions: [
          BasicMaterialIconButton(
            onPressed: () {},
            icon: Icons.lightbulb_outline,
          ),
          BasicMaterialIconButton(
            onPressed: () {},
            icon: Icons.favorite_border_outlined,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 8,
          left: 8,
          right: 8,
          bottom: MediaQuery.of(context).padding.bottom == 0 ? 8 : 0,
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          final derDieWidth = constraints.maxWidth * 0.325;
          final derDieHeight = constraints.maxHeight * 0.55;
          final dasWidth = constraints.maxWidth;
          final dasHeight = constraints.maxHeight * 0.175;
          final fontSize = dasHeight * 0.75;

          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Wort',
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                    ),
                    AutoSizeText(
                      '(Essen)',
                      style: TextStyle(
                        fontSize: fontSize * 0.25,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _AnswerButton(
                        width: derDieWidth,
                        height: derDieHeight,
                        color: context.customColorScheme.der,
                        fontSize: fontSize,
                        onPressed: () => Navigator.of(context).pushReplacementNamed(ResultsScreen.routeName),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('D'),
                            const Text('E'),
                            const Text('R'),
                          ].intersperse(Gap(fontSize * 0.025)),
                        ),
                      ),
                      _AnswerButton(
                        width: derDieWidth,
                        height: derDieHeight,
                        color: context.customColorScheme.die,
                        fontSize: fontSize,
                        onPressed: () => Navigator.of(context).pushReplacementNamed(ResultsScreen.routeName),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('D'),
                            const Text('I'),
                            const Text('E'),
                          ].intersperse(Gap(fontSize * 0.05)),
                        ),
                      ),
                    ],
                  ),
                  const Gap(8),
                  _AnswerButton(
                    width: dasWidth,
                    height: dasHeight,
                    color: context.customColorScheme.das,
                    fontSize: fontSize,
                    onPressed: () => Navigator.of(context).pushReplacementNamed(ResultsScreen.routeName),
                    child: const Column(
                      // TODO padding might be better
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text('D A S')],
                    ),
                  ),
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}

class _AnswerButton extends StatelessWidget {
  const _AnswerButton({
    required this.width,
    required this.height,
    required this.color,
    required this.fontSize,
    required this.onPressed,
    required this.child,
    Key? key,
  }) : super(key: key);

  final double width;
  final double height;
  final Color color;
  final double fontSize;
  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: MouseRegion(
        child: RoundedRectangle(
          width: width,
          height: height,
          color: color,
          child: DefaultTextStyle(
            style: TextStyle(
              fontSize: fontSize,
              color: Theme.of(context).scaffoldBackgroundColor,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lovelo',
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
