import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/models/game_result.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/basic_material_close_button.dart';
import 'package:der_die_das/core/ui/common/horizontal_button.dart';
import 'package:der_die_das/core/ui/common/tip_card.dart';
import 'package:der_die_das/features/game/game_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultsScreen extends StatelessWidget {
  static const path = '/results';

  const ResultsScreen({
    super.key,
    required this.result,
  });

  final GameResult result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BasicMaterialCloseButton(),
      ),
      body: Padding(
        padding: context.customPaddings.s,
        child: Column(
          children: [
            context.customSpacings.m,
            Row(
              children: [
                Text(
                  '🏆',
                  style: context.textTheme.displayLarge,
                ),
                context.customSpacings.l,
                Flexible(
                  child: Text(
                    context.l10n.resultsScoreLabel(result.correct, result.total),
                    style: context.textTheme.headlineMedium,
                  ),
                ),
              ],
            ),
            context.customSpacings.l,
            if (result.incorrectlyAnswered.isNotEmpty) ...[
              Center(
                child: Text(
                  context.l10n.resultsMistakesLabel,
                  style: context.textTheme.bodyLarge?.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              context.customSpacings.s,
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: context.customPaddings.sHorizontal,
                  children: [
                    for (final noun in result.incorrectlyAnswered)
                      _Mistake(
                        label: noun.withArticle,
                        tipId: noun.tipId,
                      ),
                    context.customSpacings.s,
                  ].intersperse(context.customSpacings.m),
                ),
              ),
            ],
            HorizontalButton(
              onPressed: () {
                context.pushReplacement(GameScreen.path);
              },
              text: context.l10n.resultsContinueLabel,
            ),
          ],
        ),
      ),
    );
  }
}

class _Mistake extends StatelessWidget {
  const _Mistake({
    Key? key,
    required this.label,
    required this.tipId,
  }) : super(key: key);

  final String label;
  final int? tipId;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: context.textTheme.headlineLarge,
        ),
        if (tipId != null)
          TipCard(
            tipIndex: tipId!,
            showIcon: true,
          ),
      ].intersperse(context.customSpacings.s),
    );
  }
}
