import 'package:der_die_das/core/ui/common/basic_button.dart';
import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
    required this.isSelected,
    required this.childBuilder,
    required this.onTap,
  });

  final bool isSelected;
  final Widget Function(double size) childBuilder;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BasicButton(
      onPressed: onTap,
      child: Opacity(
        opacity: isSelected ? 1 : 0.6,
        child: childBuilder(kMinInteractiveDimension),
      ),
    );
  }
}
