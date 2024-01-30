import 'package:app_store_screenshots/app_store_screenshots.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/icons/app_icon.dart';
import 'package:flutter/material.dart';

void main() {
  generateAppIcon(
    onBuildIcon: () => Theme(
      data: appTheme,
      child: const AppIcon(
        border: AppIconBorder.none,
        size: 512,
      ),
    ),
  );

  generateAppIconAndroidForeground(
    padding: const EdgeInsets.all(80),
    onBuildIcon: () => Theme(
      data: appTheme,
      child: const AppIcon(
        border: AppIconBorder.none,
        size: 512 - 80 * 2,
        hasTransparentBackground: true,
        hasSpacer: false,
      ),
    ),
  );
}
