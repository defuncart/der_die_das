import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/settings/enums/language.dart';
import 'package:der_die_das/core/db/settings/enums/number_questions.dart';
import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/extensions/theme_extensions.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/theme/app_theme.dart';
import 'package:der_die_das/core/ui/common/basic_button.dart';
import 'package:der_die_das/core/ui/common/basic_material_close_button.dart';
import 'package:der_die_das/features/home/settings_screen/ui/language_button.dart';
import 'package:der_die_das/features/home/settings_screen/ui/level_button.dart';
import 'package:der_die_das/features/home/settings_screen/ui/number_questions_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

const double _size = kMinInteractiveDimension;

class SettingsScreen extends StatelessWidget {
  static const path = '/settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textTheme.titleMedium;

    return Scaffold(
      appBar: AppBar(
        leading: const BasicMaterialCloseButton(),
        title: Text(context.l10n.settingsLabel),
        centerTitle: true,
      ),
      body: Padding(
        padding: context.customPaddings.s,
        child: DefaultTextStyle(
          style: textStyle!,
          child: Column(
            children: const [
              _LanguageRow(),
              _LevelRow(),
              _NumberQuestionsRow(),
              _VoiceRow(),
              _SoundRow(),
              Center(
                child: _DataPrivacyButton(),
              )
            ].intersperse(context.customSpacings.m),
          ),
        ),
      ),
    );
  }
}

class _LanguageRow extends ConsumerWidget {
  const _LanguageRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(languageControllerProvider);

    return _SettingsRow(
      label: context.l10n.settingsLanguageLabel,
      items: Language.values.map(
        (language) => LanguageButton(
          language: language,
          isSelected: language == state,
          size: _size,
          onTap: () => ref.read(languageControllerProvider.notifier).set(language),
        ),
      ),
    );
  }
}

class _LevelRow extends ConsumerWidget {
  const _LevelRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(levelControllerProvider);

    return _SettingsRow(
      label: context.l10n.settingsLevelLabel,
      items: Level.values.map(
        (level) => LevelButton(
          level: level,
          isSelected: level == state,
          size: _size,
          onTap: () => ref.read(levelControllerProvider.notifier).set(level),
        ),
      ),
    );
  }
}

class _NumberQuestionsRow extends ConsumerWidget {
  const _NumberQuestionsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(numberQuestionsControllerProvider);

    return _SettingsRow(
      label: context.l10n.settingsNumberQuestionsLabel,
      items: NumberQuestions.values.map(
        (numberQuestions) => NumberQuestionsButton(
          numberQuestions: numberQuestions,
          isSelected: numberQuestions == state,
          size: _size,
          onTap: () => ref.read(numberQuestionsControllerProvider.notifier).set(numberQuestions),
        ),
      ),
    );
  }
}

class _VoiceRow extends ConsumerWidget {
  const _VoiceRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(voiceLevelControllerProvider);

    return _SettingsRow(
      label: context.l10n.settingsVoiceLabel,
      items: [
        _Slider(
          value: state,
          onChanged: ref.read(voiceLevelControllerProvider.notifier).set,
        ),
      ],
    );
  }
}

class _SoundRow extends ConsumerWidget {
  const _SoundRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(soundLevelControllerProvider);

    return _SettingsRow(
      label: context.l10n.settingsSoundLabel,
      items: [
        _Slider(
          value: state,
          onChanged: ref.read(soundLevelControllerProvider.notifier).set,
        ),
      ],
    );
  }
}

class _Slider extends StatelessWidget {
  const _Slider({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final double value;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      min: 0,
      max: 1,
      divisions: 5,
      label: (value * 100).ceil().toString(),
      onChanged: onChanged,
    );
  }
}

class _SettingsRow extends StatelessWidget {
  const _SettingsRow({
    Key? key,
    required this.label,
    required this.items,
  }) : super(key: key);

  final String label;
  final Iterable<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: items.toList().intersperse(context.customSpacings.s),
        ),
      ],
    );
  }
}

class _DataPrivacyButton extends StatelessWidget {
  const _DataPrivacyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicButton(
      onTap: () => _DataPrivacyDialog.show(context),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: context.customRadii.xs,
          color: context.customColorScheme.defaultButton,
        ),
        padding: context.customPaddings.m,
        child: Text(
          context.l10n.settingsDataPrivacyLabel,
          style: context.textTheme.labelMedium?.copyWith(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}

class _DataPrivacyDialog extends StatelessWidget {
  const _DataPrivacyDialog({Key? key}) : super(key: key);

  static void show(BuildContext context) => showDialog(
        context: context,
        builder: (context) => const _DataPrivacyDialog(),
      );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(context.l10n.settingsDataPrivacyAlertTitle),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _TextWithLink(
            text: context.l10n.settingsDataPrivacyAlertContent1,
            url: 'https://github.com/defuncart/der_die_das/blob/main/privacy_policy.md',
          ),
          Text(context.l10n.settingsDataPrivacyAlertContent2),
          _TextWithLink(
            text: context.l10n.settingsDataPrivacyAlertContent3,
            url: 'https://github.com/defuncart/der_die_das/',
          ),
        ].intersperse(context.customSpacings.s),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.secondary,
          ),
          child: Text(MaterialLocalizations.of(context).viewLicensesButtonLabel),
          onPressed: () => showLicensePage(
            context: context,
            applicationName: context.l10n.appTitle,
            applicationLegalese: '© 2023 defuncart',
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.secondary,
          ),
          child: Text(MaterialLocalizations.of(context).closeButtonLabel),
          onPressed: () => Navigator.pop(context),
        ),
      ],
      scrollable: true,
    );
  }
}

class _TextWithLink extends StatelessWidget {
  const _TextWithLink({
    Key? key,
    required this.text,
    required this.url,
  }) : super(key: key);

  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    final start = text.indexOf('<a>');
    final end = text.indexOf('</a>');
    final components = start != -1 && end != -1 && end > start
        ? [
            TextSpan(
              text: text.substring(0, start),
            ),
            _ClickableTextSpan(
              text: text.substring(start, end).replaceAll('<a>', ''),
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
              url: url,
            ),
            TextSpan(
              text: text.substring(end).replaceAll('</a>', ''),
            ),
          ]
        : [
            TextSpan(text: text),
          ];

    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: context.textTheme.bodyMedium,
        children: components,
      ),
    );
  }
}

class _ClickableTextSpan extends TextSpan {
  _ClickableTextSpan({
    required String text,
    TextStyle? style,
    required String url,
  }) : super(
          text: text,
          style: style,
          recognizer: TapGestureRecognizer()..onTap = () async => await _openUrl(url),
        );

  static Future<void> _openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(
        Uri.parse(url),
        mode: defaultTargetPlatform == TargetPlatform.android
            ? LaunchMode.externalApplication
            : LaunchMode.platformDefault,
      );
    }
  }
}
