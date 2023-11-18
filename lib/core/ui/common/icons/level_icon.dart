import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/rounded_square.dart';
import 'package:flutter/material.dart';

class LevelIcon extends StatelessWidget {
  const LevelIcon({
    super.key,
    required this.level,
    this.size = 24,
  });

  final Level level;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RoundedSquare(
      size: size,
      color: context.customColorScheme.levelIcon,
      borderRadius: context.customRadii.xs,
      child: Padding(
        padding: EdgeInsets.only(top: (size / 24) * 2),
        child: Text(
          level.name.toUpperCase(),
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
