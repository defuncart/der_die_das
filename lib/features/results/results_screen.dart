import 'package:der_die_das/core/db/nouns_database/models/tip.dart';
import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/models/game_result.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/buttons/basic_material_close_button.dart';
import 'package:der_die_das/core/ui/common/buttons/horizontal_button.dart';
import 'package:der_die_das/core/ui/common/text/tip_card.dart';
import 'package:der_die_das/features/game/game_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultsScreen extends StatelessWidget {
  static const path = '/results';

  const ResultsScreen({super.key, required this.result});

  final GameResult result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const BasicMaterialCloseButton()),
      body: Padding(
        padding: context.customPaddings.s,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            context.customSpacings.m,
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: context.customSpacings.m.mainAxisExtent,
                children: [
                  const Text('🏆', style: TextStyle(fontSize: 32)),
                  Text(
                    context.l10n.resultsScoreLabel(result.correct, result.total),
                    style: context.textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            context.customSpacings.l,
            if (result.incorrectlyAnswered.isNotEmpty) ...[
              Center(
                child: Text(
                  context.l10n.resultsMistakesLabel,
                  style: context.textTheme.bodyLarge?.copyWith(decoration: TextDecoration.underline),
                ),
              ),
              context.customSpacings.s,
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: context.customPaddings.sHorizontal,
                  children: [
                    for (final noun in result.incorrectlyAnswered)
                      _Mistake(label: noun.withArticle, noun: noun.withoutArticle, tip: noun.tip),
                    context.customSpacings.s,
                  ].intersperse(context.customSpacings.m),
                ),
              ),
            ] else
              const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: HorizontalButton(
                onPressed: () {
                  context.pushReplacement(GameScreen.path);
                },
                text: context.l10n.resultsContinueLabel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Mistake extends StatelessWidget {
  const _Mistake({required this.label, required this.noun, required this.tip});

  final String label;
  final String noun;
  final Tip? tip;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: context.customSpacings.s.mainAxisExtent,
      children: [
        Text(label, style: context.textTheme.headlineLarge),
        if (tip != null) TipCard(tip: tip!, noun: noun, showIcon: true),
      ],
    );
  }
}
