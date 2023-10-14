import 'package:der_die_das/core/db/settings/enums/answers_layout.dart';
import 'package:der_die_das/core/theme/custom_icons.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/features/home/settings_screen/ui/settings_button.dart';
import 'package:flutter/material.dart';

class AnswersLayoutButton extends StatelessWidget {
  const AnswersLayoutButton({
    super.key,
    required this.answersLayout,
    required this.isSelected,
    required this.onTap,
  });

  final AnswersLayout answersLayout;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SettingsButton(
      isSelected: isSelected,
      onTap: onTap,
      childBuilder: (size) => SizedBox(
        width: size,
        height: size,
        child: Center(
          child: Icon(
            answersLayout.icon,
            size: size * 0.8,
            color: context.customColorScheme.defaultButton,
          ),
        ),
      ),
    );
  }
}

extension on AnswersLayout {
  IconData get icon => switch (this) {
        AnswersLayout.standard => CustomIcons.answers_layout_standard,
        AnswersLayout.horizontal => CustomIcons.answers_layout_horizontal,
      };
}
