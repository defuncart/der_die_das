import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/settings/enums/answers_layout.dart';
import 'package:der_die_das/core/db/settings/enums/language.dart';
import 'package:der_die_das/core/db/settings/enums/number_questions.dart';
import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/buttons/basic_button.dart';
import 'package:der_die_das/core/ui/common/buttons/basic_material_close_button.dart';
import 'package:der_die_das/core/ui/common/icons/app_icon.dart';
import 'package:der_die_das/features/home/settings_screen/ui/answers_layout_button.dart';
import 'package:der_die_das/features/home/settings_screen/ui/language_button.dart';
import 'package:der_die_das/features/home/settings_screen/ui/level_button.dart';
import 'package:der_die_das/features/home/settings_screen/ui/number_questions_button.dart';
import 'package:der_die_das/features/home/settings_screen/ui/tips_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatelessWidget {
  static const path = '/settings';

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textTheme.titleMedium;

    return Scaffold(
      appBar: AppBar(
        leading: const BasicMaterialCloseButton(),
        title: Text(context.l10n.settingsLabel),
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
              _ShowTipsRow(),
              _AnswersLayoutRow(),
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
  const _LanguageRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(languageControllerProvider);

    return _SettingsRow(
      label: context.l10n.settingsLanguageLabel,
      items: Language.values.map(
        (language) => LanguageButton(
          language: language,
          isSelected: language == state,
          onTap: () => ref.read(languageControllerProvider.notifier).set(language),
        ),
      ),
    );
  }
}

class _LevelRow extends ConsumerWidget {
  const _LevelRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(levelControllerProvider);

    return _SettingsRow(
      label: context.l10n.settingsLevelLabel,
      items: Level.values.map(
        (level) => LevelButton(
          level: level,
          isSelected: level == state,
          onTap: () => ref.read(levelControllerProvider.notifier).set(level),
        ),
      ),
    );
  }
}

class _NumberQuestionsRow extends ConsumerWidget {
  const _NumberQuestionsRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(numberQuestionsControllerProvider);

    return _SettingsRow(
      label: context.l10n.settingsNumberQuestionsLabel,
      items: NumberQuestions.values.map(
        (numberQuestions) => NumberQuestionsButton(
          numberQuestions: numberQuestions,
          isSelected: numberQuestions == state,
          onTap: () => ref.read(numberQuestionsControllerProvider.notifier).set(numberQuestions),
        ),
      ),
    );
  }
}

class _ShowTipsRow extends ConsumerWidget {
  const _ShowTipsRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(showTipsControllerProvider);

    return _SettingsRow(
      label: context.l10n.settingsShowTipsLabel,
      items: [false, true].map(
        (value) => TipsButton(
          value: value,
          isSelected: state == value,
          onTap: () => ref.read(showTipsControllerProvider.notifier).set(value),
        ),
      ),
    );
  }
}

class _AnswersLayoutRow extends ConsumerWidget {
  const _AnswersLayoutRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(answersLayoutControllerProvider);

    return _SettingsRow(
      label: context.l10n.settingsAnswersLayoutLabel,
      items: AnswersLayout.values.map(
        (answersLayout) => AnswersLayoutButton(
          answersLayout: answersLayout,
          isSelected: answersLayout == state,
          onTap: () => ref.read(answersLayoutControllerProvider.notifier).set(answersLayout),
        ),
      ),
    );
  }
}

class _VoiceRow extends ConsumerWidget {
  const _VoiceRow();

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
  const _SoundRow();

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
    required this.value,
    required this.onChanged,
  });

  final double value;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: Theme.of(context).sliderTheme.copyWith(
            inactiveTickMarkColor: Theme.of(context).scaffoldBackgroundColor,
          ),
      child: Slider(
        value: value,
        min: 0,
        max: 1,
        divisions: 5,
        label: (value * 100).ceil().toString(),
        onChanged: onChanged,
        inactiveColor: context.colorScheme.primary.withOpacity(0.6),
      ),
    );
  }
}

class _SettingsRow extends StatelessWidget {
  const _SettingsRow({
    required this.label,
    required this.items,
  });

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
  const _DataPrivacyButton();

  @override
  Widget build(BuildContext context) {
    return BasicButton(
      onPressed: () => _DataPrivacyDialog.show(context),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: context.customRadii.xs,
          color: context.customColorScheme.defaultButton,
        ),
        padding: context.customPaddings.m,
        child: Text(
          context.l10n.settingsDataPrivacyLabel,
          style: context.textTheme.labelLarge?.copyWith(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}

class _DataPrivacyDialog extends StatelessWidget {
  const _DataPrivacyDialog();

  static void show(BuildContext context) => showDialog(
        context: context,
        builder: (context) => const _DataPrivacyDialog(),
      );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: context.customRadii.s,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      surfaceTintColor: Colors.transparent,
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
        ].intersperse(context.customSpacings.m),
      ),
      actions: <Widget>[
        BasicButton(
          child: Text(
            MaterialLocalizations.of(context).viewLicensesButtonLabel,
            style: TextStyle(
              color: context.colorScheme.primary,
            ),
          ),
          onPressed: () => showLicensePage(
            context: context,
            applicationIcon: const AppIcon(
              size: 96,
            ),
            applicationName: '',
            applicationLegalese: '© 2023 defuncart',
          ),
        ),
        BasicButton(
          child: Text(
            MaterialLocalizations.of(context).closeButtonLabel,
            style: TextStyle(
              color: context.colorScheme.primary,
            ),
          ),
          onPressed: () => context.pop(),
        ),
      ],
      scrollable: true,
    );
  }
}

class _TextWithLink extends StatelessWidget {
  const _TextWithLink({
    required this.text,
    required this.url,
  });

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
    required String super.text,
    super.style,
    required String url,
  }) : super(
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
