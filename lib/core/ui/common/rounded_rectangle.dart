import 'package:der_die_das/core/theme/theme.dart';
import 'package:flutter/material.dart';

class RoundedRectangle extends StatelessWidget {
  const RoundedRectangle({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    this.borderRadius,
    required this.child,
  });

  final double width;
  final double height;
  final Color color;
  final BorderRadius? borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius = borderRadius ?? context.customRadii.s;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(borderRadius: effectiveBorderRadius, color: color),
      child: Center(child: child),
    );
  }
}
