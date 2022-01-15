import 'package:auto_size_text/auto_size_text.dart';
import 'package:der_die_das/configs/app_theme.dart';
import 'package:der_die_das/extensions/list_widget_extensions.dart';
import 'package:der_die_das/widgets/common/rounded_rectangle.dart';
import 'package:der_die_das/widgets/screens/results_screen/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GameScreen extends StatelessWidget {
  static const routeName = 'GameScreen';

  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.lightbulb_outline,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
            ),
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
                        color: AppColors.blue,
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
                        color: AppColors.brown,
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
                    color: AppColors.black,
                    fontSize: fontSize,
                    onPressed: () => Navigator.of(context).pushReplacementNamed(ResultsScreen.routeName),
                    child: Column(
                      // TODO padding might be better
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [Text('D A S')],
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
