import 'package:der_die_das/configs/app_theme.dart';
import 'package:der_die_das/extensions/list_widget_extensions.dart';
import 'package:der_die_das/services/nouns_database/enums/level.dart';
import 'package:der_die_das/widgets/common/icons/de_lang_painter.dart';
import 'package:der_die_das/widgets/common/icons/pl_lang_painter.dart';
import 'package:der_die_das/widgets/common/level_icon.dart';
import 'package:der_die_das/widgets/common/rounded_rectangle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

const double _size = 32;

class SettingsScreen extends StatelessWidget {
  static const routeName = 'SettingsScreen';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleLarge?.copyWith(
          color: Theme.of(context).textTheme.bodyMedium?.color,
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Einstellungen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sprache',
                  style: textStyle,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Opacity(
                      opacity: 0.6,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: CustomPaint(
                          painter: DELangPainter(),
                          size: const Size(_size, _size),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: CustomPaint(
                        painter: DELangPainter(),
                        size: const Size(_size, _size),
                      ),
                    ),
                    Opacity(
                      opacity: 0.6,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: CustomPaint(
                          painter: PLLangPainter(),
                          size: const Size(_size, _size),
                        ),
                      ),
                    ),
                  ].intersperse(const Gap(4)),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Level',
                  style: textStyle,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const LevelIcon(
                      level: Level.a1,
                      size: _size,
                    ),
                    const Opacity(
                      opacity: 0.6,
                      child: LevelIcon(
                        level: Level.a2,
                        size: _size,
                      ),
                    ),
                  ].intersperse(const Gap(4)),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fragen pro Runde',
                  style: textStyle,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Opacity(
                      opacity: 0.6,
                      child: _NumberQuestionsIcon(
                        numberQuestions: '10',
                      ),
                    ),
                    const _NumberQuestionsIcon(
                      numberQuestions: '25',
                    ),
                    const Opacity(
                      opacity: 0.6,
                      child: _NumberQuestionsIcon(
                        numberQuestions: '50',
                      ),
                    ),
                  ].intersperse(const Gap(4)),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Stimme',
                  style: textStyle,
                ),
                CupertinoSlider(
                  value: 0.6,
                  onChanged: (_) {},
                ),
              ],
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.brown,
                ),
                padding: const EdgeInsets.all(8),
                child: Text(
                  'Data Privacy',
                  style: textStyle?.copyWith(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ),
            )
          ].intersperse(const Gap(16)),
        ),
      ),
    );
  }
}

class _NumberQuestionsIcon extends StatelessWidget {
  const _NumberQuestionsIcon({
    required this.numberQuestions,
    Key? key,
  }) : super(key: key);

  final String numberQuestions;

  @override
  Widget build(BuildContext context) {
    return RoundedRectangle(
      width: _size,
      height: _size,
      color: AppColors.blue,
      borderRadius: 4,
      child: Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Text(
          numberQuestions,
          style: TextStyle(
            fontFamily: 'Lovelo',
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}
