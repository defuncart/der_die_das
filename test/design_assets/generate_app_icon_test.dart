import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  const generateAppIcon = bool.fromEnvironment(
    'GENERATE_APP_ICON',
    defaultValue: false,
  );

  testGoldens('Generate app icon', (tester) async {
    await loadAppFonts();

    await tester.pumpWidgetBuilder(
      Theme(
        data: appTheme,
        child: const AppIcon(
          border: AppIconBorder.none,
          size: 512,
        ),
      ),
      surfaceSize: const Size(512, 512),
    );
    await screenMatchesGolden(tester, 'app_icon');
  }, skip: !generateAppIcon);
}
