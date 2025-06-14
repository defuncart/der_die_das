import 'package:der_die_das/core/db/nouns_database/models/tip.dart';
import 'package:der_die_das/core/db/tips/localized_tip.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/buttons/basic_button.dart';
import 'package:der_die_das/core/ui/common/text/highlighted_text.dart';
import 'package:flutter/material.dart';

class TipCard extends StatelessWidget {
  const TipCard({
    super.key,
    required this.tip,
    required this.noun,
    this.showIcon = false,
    this.onClose,
  });

  final Tip tip;
  final String noun;
  final bool showIcon;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    final tipText = getTip(context: context, index: tip.id).description;
    final exceptionText = tip.isException ? context.l10n.tipException(noun) : null;
    final text = showIcon && exceptionText != null ? '$tipText $exceptionText' : tipText;
    final textStyle = showIcon ? context.textTheme.bodyLarge : context.textTheme.headlineMedium;

    return Stack(
      alignment: Alignment.topRight,
      clipBehavior: Clip.none,
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.sizeOf(context).width - 64,
          ),
          decoration: BoxDecoration(
            borderRadius: context.customRadii.xs,
            border: Border.all(
              color: context.colorScheme.primary,
              width: 4,
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          padding: context.customPaddings.m,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: context.customSpacings.s,
            children: [
              Row(
                spacing: context.customSpacings.s,
                children: [
                  if (showIcon)
                    Icon(
                      Icons.lightbulb_outline,
                      color: context.colorScheme.primary,
                    ),
                  Expanded(
                    child: HighlightedText(
                      text,
                      highlightColor: context.colorScheme.primary,
                      textStyle: textStyle,
                    ),
                  ),
                ],
              ),
              if (tip.isException && !showIcon)
                HighlightedText(
                  exceptionText!,
                  textStyle: textStyle,
                  highlightColor: context.colorScheme.primary,
                ),
            ],
          ),
        ),
        if (onClose != null)
          Positioned(
            top: -kMinInteractiveDimension * 0.375,
            right: -kMinInteractiveDimension * 0.375,
            child: BasicButton(
              onPressed: onClose!,
              child: Container(
                width: kMinInteractiveDimension,
                height: kMinInteractiveDimension,
                color: context.colorScheme.primary,
                child: Center(
                  child: Icon(
                    Icons.close,
                    size: kMinInteractiveDimension * 0.75,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
