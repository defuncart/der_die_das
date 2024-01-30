import 'package:app_store_screenshots/app_store_screenshots.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/icons/der_die_das_horizontal_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/localizations.dart';

void main() {
  final languageLabels = {
    const Locale('en'): 'A fun German articles quiz game',
    const Locale('de'): 'Ein lustiges Artikelspiel für die deutsche Sprache',
    const Locale('pl'): 'Zabawna gra ucząca niemieckich rodzajników',
  };

  generateGooglePlayFeatureGraphic(
    locales: AppLocalizations.supportedLocales,
    onBuildGraphic: (locale) => Theme(
      data: appTheme,
      child: GooglePlayFeatureGraphics(
        text: languageLabels[locale]!,
      ),
    ),
  );
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
