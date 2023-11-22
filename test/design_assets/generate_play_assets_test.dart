import 'package:auto_size_text/auto_size_text.dart';
import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/icons/der_die_das_horizontal_logo.dart';
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

  testGoldens('Generate Google Play Feature Graphic', (tester) async {
    const languageLabels = {
      'en': 'A fun German articles quiz game',
      'de': 'Ein lustiges Artikelspiel für die deutsche Sprache',
      'pl': 'Zabawna gra ucząca niemieckich rodzajników',
    };

    for (final kvp in languageLabels.entries) {
      final text = kvp.value;
      final filename = 'google_play_assets/google_play_feature_graphic_${kvp.key}';
      await tester.pumpWidgetBuilder(
        Theme(
          data: appTheme,
          child: GooglePlayFeatureGraphics(text: text),
        ),
        surfaceSize: const Size(1024, 500),
      );
      await screenMatchesGolden(tester, filename);
    }
  }, skip: !generateDesignAssets);
}

class GooglePlayFeatureGraphics extends StatelessWidget {
  const GooglePlayFeatureGraphics({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1024,
      height: 500,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const DerDieDasHorizontalLogo(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: AutoSizeText(
                text,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 64,
                  color: context.customColorScheme.defaultButton,
                ),
              ),
            ),
          ].intersperse(const SizedBox(height: 64)),
        ),
      ),
    );
  }
}
