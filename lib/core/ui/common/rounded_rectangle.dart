import 'package:flutter/material.dart';

class RoundedRectangle extends StatelessWidget {
  const RoundedRectangle({
    required this.width,
    required this.height,
    required this.color,
    required this.child,
    this.borderRadius = 8,
    Key? key,
  }) : super(key: key);

  final double width;
  final double height;
  final Color color;
  final double borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
