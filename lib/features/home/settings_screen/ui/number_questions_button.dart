import 'package:flutter/material.dart';
import 'package:der_die_das/core/ui/common/rounded_rectangle.dart';
import 'package:der_die_das/core/theme/app_theme.dart';
import 'package:der_die_das/core/db/settings/enums/number_questions.dart';
import 'package:der_die_das/core/ui/common/basic_button.dart';

class NumberQuestionsButton extends StatelessWidget {
  const NumberQuestionsButton({
    super.key,
    required this.numberQuestions,
    required this.isSelected,
    required this.size,
    required this.onTap,
  });

  final NumberQuestions numberQuestions;
  final bool isSelected;
  final double size;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isSelected ? 1 : 0.6,
      child: BasicButton(
        onTap: onTap,
        child: _NumberQuestionsIcon(
          numberQuestions: numberQuestions.value.toString(),
          size: size,
        ),
      ),
    );
  }
}

class _NumberQuestionsIcon extends StatelessWidget {
  const _NumberQuestionsIcon({
    super.key,
    required this.numberQuestions,
    required this.size,
  });

  final String numberQuestions;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RoundedRectangle(
      width: size,
      height: size,
      color: context.customColorScheme.defaultButton,
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
