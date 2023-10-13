import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/basic_button.dart';
import 'package:flutter/material.dart';

class TipsButton extends StatelessWidget {
  const TipsButton({
    super.key,
    required this.value,
    required this.isSelected,
    required this.size,
    required this.onTap,
  });

  final bool value;
  final bool isSelected;
  final double size;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BasicButton(
      onPressed: onTap,
      child: Opacity(
        opacity: isSelected ? 1 : 0.6,
        child: Icon(
          value ? Icons.check : Icons.close,
          size: size,
          color: context.colorScheme.primary,
        ),
      ),
    );
  }
}
