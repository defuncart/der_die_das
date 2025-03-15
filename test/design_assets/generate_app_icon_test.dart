import 'package:app_store_screenshots/app_store_screenshots.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/icons/app_icon.dart';
import 'package:flutter/material.dart';

void main() {
  generateAppIcon(onBuildIcon: (size) => Theme(data: appTheme, child: AppIcon(border: AppIconBorder.none, size: size)));

  generateAppIconAndroidForeground(
    onBuildIcon:
        (size) => Theme(
          data: appTheme,
          child: AppIcon(border: AppIconBorder.none, size: size, hasTransparentBackground: true, hasSpacer: false),
        ),
  );
}
