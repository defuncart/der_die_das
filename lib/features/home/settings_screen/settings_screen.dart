import 'package:der_die_das/core/db/nouns_database/enums/level.dart';
import 'package:der_die_das/core/db/settings/enums/language.dart';
import 'package:der_die_das/core/db/settings/enums/number_questions.dart';
import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/theme/app_theme.dart';
import 'package:der_die_das/features/home/settings_screen/state/settings_state.dart';
import 'package:der_die_das/features/home/settings_screen/ui/language_button.dart';
import 'package:der_die_das/features/home/settings_screen/ui/level_button.dart';
import 'package:der_die_das/features/home/settings_screen/ui/number_questions_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

const double _size = 32;

class SettingsScreen extends StatelessWidget {
  static const routeName = 'SettingsScreen';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleLarge?.copyWith(
          color: Theme.of(context).textTheme.bodyMedium?.color,
        );

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.settingsLabel),
        centerTitle: true,
      ),
      body: Padding(
        padding: context.customPaddings.s,
        child: DefaultTextStyle(
          style: textStyle!,
          child: Column(
            children: [
              const _LanguageRow(),
              const _LevelRow(),
              const _NumberQuestionsRow(),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Stimme',
                    style: textStyle,
                  ),
                  CupertinoSlider(
                    value: 0.6,
                    onChanged: (_) {},
                  ),
                ],
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: context.customColorScheme.defaultButton,
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Data Privacy',
                    style: textStyle?.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ),
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
