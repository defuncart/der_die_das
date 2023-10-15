import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/buttons/basic_button.dart';
import 'package:der_die_das/core/ui/common/rounded_rectangle.dart';
import 'package:flutter/material.dart';

class HorizontalButton extends StatelessWidget {
  const HorizontalButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return BasicButton(
      onPressed: onPressed,
      child: RoundedRectangle(
        width: double.infinity,
        height: kMinInteractiveDimension * 1.4,
        color: context.colorScheme.primary,
        child: Text(
          text,
          style: context.textTheme.headlineMedium?.copyWith(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}
