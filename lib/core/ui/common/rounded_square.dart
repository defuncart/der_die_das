import 'package:der_die_das/core/ui/common/rounded_rectangle.dart';
import 'package:flutter/material.dart';

class RoundedSquare extends StatelessWidget {
  const RoundedSquare({
    super.key,
    required this.size,
    required this.color,
    this.borderRadius,
    required this.child,
  });

  final double size;
  final Color color;
  final BorderRadius? borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RoundedRectangle(
      width: size,
      height: size,
      color: color,
      borderRadius: borderRadius,
      child: child,
    );
  }
}
