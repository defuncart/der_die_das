import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/icons/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  const generateDesignAssets = bool.fromEnvironment(
    'GENERATE_DESIGN_ASSETS',
    defaultValue: false,
  );

  setUp(() async {
    await loadAppFonts();
  });

  testGoldens('Generate app icon', (tester) async {
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
    await screenMatchesGolden(tester, 'app_icons/app_icon');
  }, skip: !generateDesignAssets);

  testGoldens('Generate android icon foreground', (tester) async {
    await tester.pumpWidgetBuilder(
      Padding(
        padding: const EdgeInsets.all(80),
        child: Theme(
          data: appTheme,
          child: const AppIcon(
            border: AppIconBorder.none,
            size: 512 - 80 * 2,
            hasTransparentBackground: true,
            hasSpacer: false,
          ),
        ),
      ),
      surfaceSize: const Size(512, 512),
      wrapper: (child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
          color: Colors.transparent,
          child: child,
        ),
      ),
    );
    await screenMatchesGolden(tester, 'app_icons/android_icon_foreground');
  }, skip: !generateDesignAssets);
}
