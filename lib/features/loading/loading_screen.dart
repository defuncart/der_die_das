import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/features/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

const _segmentDuration = Duration(milliseconds: 600);
const _fadeOutDuration = Duration(milliseconds: 300);

// TODO initialize dbs, precache SVGs
class LoadingScreen extends StatelessWidget {
  static const path = '/';

  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const _Square(color: _DFAColors.pink).animate().fadeIn(duration: _segmentDuration),
                const _Square(color: _DFAColors.blue)
                    .animate(delay: _segmentDuration)
                    .fadeIn(duration: _segmentDuration),
              ].intersperse(context.customSpacings.s),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const _Square(color: _DFAColors.green)
                    .animate(delay: _segmentDuration * 3)
                    .fadeIn(duration: _segmentDuration),
                const _Square(color: _DFAColors.yellow)
                    .animate(delay: _segmentDuration * 2)
                    .fadeIn(duration: _segmentDuration),
              ].intersperse(context.customSpacings.s),
            ),
          ].intersperse(context.customSpacings.s),
        ).animate(delay: _segmentDuration * 4).fadeOut(duration: _fadeOutDuration).listen(callback: (value) {
          if (value == 1) {
            context.pushReplacement(HomeScreen.path);
          }
        }),
      ),
    );
  }
}

const _size = 75.0;

class _Square extends StatelessWidget {
  const _Square({required this.color, Key? key}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: _size,
      height: _size,
    );
  }
}

abstract class _DFAColors {
  static const pink = Color(0xffE8337E);
  static const blue = Color(0xff337EE8);
  static const green = Color(0xff33E87E);
  static const yellow = Color(0xffE8E833);
}
