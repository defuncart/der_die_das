import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/ui/common/level_icon.dart';
import 'package:der_die_das/features/home/settings_screen/ui/settings_button.dart';
import 'package:flutter/material.dart';

class LevelButton extends StatelessWidget {
  const LevelButton({
    super.key,
    required this.level,
    required this.isSelected,
    required this.onTap,
  });

  final Level level;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SettingsButton(
      isSelected: isSelected,
      onTap: onTap,
      childBuilder: (size) => LevelIcon(
        level: level,
        size: size,
      ),
    );
  }
}
