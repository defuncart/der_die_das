import 'package:der_die_das/core/db/settings/enums/language.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/features/home/settings_screen/ui/de_lang_painter.dart';
import 'package:der_die_das/features/home/settings_screen/ui/pl_lang_painter.dart';
import 'package:der_die_das/features/home/settings_screen/ui/settings_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
    required this.language,
    required this.isSelected,
    required this.onTap,
  });

  final Language language;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SettingsButton(
      isSelected: isSelected,
      onTap: onTap,
      childBuilder: (size) => ClipRRect(
        borderRadius: context.customRadii.xs,
        child: language == Language.en
            ? SvgPicture.asset(
                'assets/images/settings/en.svg',
                width: size,
                height: size,
              )
            : CustomPaint(
                painter: switch (language) {
                  Language.de => const DELangPainter(),
                  Language.en => null,
                  Language.pl => const PLLangPainter(),
                },
                size: Size(size, size),
              ),
      ),
    );
  }
}
