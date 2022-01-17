import 'package:der_die_das/configs/app_theme.dart';
import 'package:der_die_das/services/nouns_database/enums/level.dart';
import 'package:der_die_das/widgets/common/rounded_rectangle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LevelIcon extends StatelessWidget {
  const LevelIcon({
    required this.level,
    this.size = 24,
    Key? key,
  }) : super(key: key);

  final Level level;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RoundedRectangle(
      width: size,
      height: size,
      color: AppColors.purple,
      borderRadius: 4,
      child: Padding(
        padding: EdgeInsets.only(top: (size / 24) * 3),
        child: Text(
          describeEnum(level).toUpperCase(),
          style: TextStyle(
            fontFamily: 'Lovelo',
            fontSize: (size / 24) * 16,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}
