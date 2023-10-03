import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/ui/common/basic_button.dart';
import 'package:der_die_das/core/ui/common/level_icon.dart';
import 'package:flutter/material.dart';

class LevelButton extends StatelessWidget {
  const LevelButton({
    super.key,
    required this.level,
    required this.isSelected,
    required this.size,
    required this.onTap,
  });

  final Level level;
  final bool isSelected;
  final double size;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isSelected ? 1 : 0.6,
      child: BasicButton(
        onTap: onTap,
        child: LevelIcon(
          level: level,
          size: size,
        ),
      ),
    );
  }
}
