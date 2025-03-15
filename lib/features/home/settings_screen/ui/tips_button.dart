import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/features/home/settings_screen/ui/settings_button.dart';
import 'package:flutter/material.dart';

class TipsButton extends StatelessWidget {
  const TipsButton({super.key, required this.value, required this.isSelected, required this.onTap});

  final bool value;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SettingsButton(
      isSelected: isSelected,
      onTap: onTap,
      childBuilder: (size) => Icon(value ? Icons.check : Icons.close, size: size, color: context.colorScheme.primary),
    );
  }
}
