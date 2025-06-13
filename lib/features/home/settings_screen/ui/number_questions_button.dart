import 'package:der_die_das/core/db/settings/enums/number_questions.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/rounded_square.dart';
import 'package:der_die_das/features/home/settings_screen/ui/settings_button.dart';
import 'package:flutter/material.dart';

class NumberQuestionsButton extends StatelessWidget {
  const NumberQuestionsButton({
    super.key,
    required this.numberQuestions,
    required this.isSelected,
    required this.onTap,
  });

  final NumberQuestions numberQuestions;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SettingsButton(
      isSelected: isSelected,
      onTap: onTap,
      childBuilder: (size) => _NumberQuestionsIcon(
        numberQuestions: numberQuestions.value.toString(),
        size: size,
      ),
    );
  }
}

class _NumberQuestionsIcon extends StatelessWidget {
  const _NumberQuestionsIcon({
    required this.numberQuestions,
    required this.size,
  });

  final String numberQuestions;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RoundedSquare(
      size: size,
      color: context.customColorScheme.defaultButton,
      borderRadius: context.customRadii.xs,
      child: Padding(
        padding: EdgeInsets.only(top: (size / 24) * 2),
        child: Text(
          numberQuestions,
          style: TextStyle(
            fontFamily: AppFonts.lovelo,
            fontSize: (size / 24) * 16,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}
