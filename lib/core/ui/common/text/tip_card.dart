import 'package:der_die_das/core/db/tips/model/tip.dart';
import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/buttons/basic_button.dart';
import 'package:der_die_das/core/ui/common/text/highlighted_text.dart';
import 'package:flutter/material.dart';

class TipCard extends StatelessWidget {
  const TipCard({
    super.key,
    required this.tipIndex,
    this.showIcon = false,
    this.onClose,
  });

  final int tipIndex;
  final bool showIcon;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    final text = getTip(
      context: context,
      index: tipIndex,
    ).description;
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
          child: Row(
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
            ].intersperse(context.customSpacings.s),
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
