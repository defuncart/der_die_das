import 'package:auto_size_text/auto_size_text.dart';
import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/db/nouns_database/models/tip.dart';
import 'package:der_die_das/core/db/settings/enums/answers_layout.dart';
import 'package:der_die_das/core/db/settings/state/settings_state.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/buttons/article_button.dart';
import 'package:der_die_das/core/ui/common/buttons/basic_material_close_button.dart';
import 'package:der_die_das/core/ui/common/buttons/basic_material_icon_button.dart';
import 'package:der_die_das/core/ui/common/buttons/horizontal_button.dart';
import 'package:der_die_das/core/ui/common/icons/article_icons.dart';
import 'package:der_die_das/core/ui/common/text/tip_card.dart';
import 'package:der_die_das/features/game/state/game_state.dart';
import 'package:der_die_das/features/results/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class GameScreen extends ConsumerWidget {
  static const path = '/game';

  const GameScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(gameStateControllerProvider);

    return state.maybeMap(
      data: (data) {
        if (data.value.result != null) {
          Future.microtask(() => context.pushReplacement(ResultsScreen.path, extra: data.value.result));
          return const Scaffold();
        }
        return _GameScreen(state: data.value);
      },
      orElse: () => const Scaffold(),
    );
  }
}

class _GameScreen extends ConsumerWidget {
  const _GameScreen({required this.state});

  final GameState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showTipsButton = ref.watch(showTipsControllerProvider);

    return Scaffold(
      appBar: AppBar(
        leading: const BasicMaterialCloseButton(),
        title: LayoutBuilder(
          builder: (context, boxConstraints) {
            return SizedBox(
              height: 12,
              child: Stack(
                children: [
                  Container(
                    width: boxConstraints.maxWidth,
                    decoration: BoxDecoration(
                      color: context.colorScheme.primary.withValues(alpha: 0.25),
                      borderRadius: context.customRadii.s,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: boxConstraints.maxWidth * state.progress,
                    decoration: BoxDecoration(color: context.colorScheme.primary, borderRadius: context.customRadii.s),
                  ),
                ],
              ),
            );
          },
        ),
        actions: [
          if (showTipsButton && state.tip != null)
            _HintButton(tip: state.tip!, noun: state.withoutArticle)
          else
            const SizedBox(width: kMinInteractiveDimension),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: MediaQuery.paddingOf(context).bottom == 0 ? 8 : 0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final buttonsHeight = constraints.maxHeight * (0.55 + 0.175) + context.customSpacings.s.mainAxisExtent;
            final verticalWidth = constraints.maxWidth * 0.325;
            final verticalHeight = constraints.maxHeight * 0.55;
            final horizontalWidth = constraints.maxWidth;
            final horizontalHeight = constraints.maxHeight * 0.175;
            final fontSize = horizontalHeight * 0.75;

            return SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: state.answeredIncorrectly != null
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          state.withoutArticle,
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                            color: context.customColorScheme.defaultButton,
                          ),
                          maxLines: 1,
                        ),
                        if (state.ambiguousLabel != null)
                          AutoSizeText(state.ambiguousLabel!, style: TextStyle(fontSize: fontSize * 0.25), maxLines: 1),
                      ],
                    ),
                  ),
                  if (state.answeredIncorrectly != null)
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        spacing: context.customSpacings.m.mainAxisExtent,
                        children: [
                          Expanded(
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                spacing: context.customSpacings.l.mainAxisExtent,
                                children: [
                                  ...state.answeredIncorrectly!.articles.map(
                                    (article) => ArticleIcon(
                                      article: article,
                                      width: horizontalWidth,
                                      horizontalTextWidthPercent: 0.6,
                                      height: horizontalHeight,
                                      fontSize: fontSize,
                                    ),
                                  ),
                                  if (state.tip != null)
                                    TipCard(tip: state.tip!, noun: state.withoutArticle, showIcon: true),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: HorizontalButton(
                              onPressed: ref.read(gameStateControllerProvider.notifier).onContinue,
                              text: context.l10n.gameContinueLabel,
                            ),
                          ),
                        ],
                      ),
                    )
                  else if (state.answeredCorrectly != null)
                    SizedBox(
                      width: constraints.maxWidth,
                      height: buttonsHeight,
                      child: _Articles.subset(
                        articles: state.answeredCorrectly!.articles.toList(),
                        verticalWidth: verticalWidth,
                        verticalHeight: verticalHeight,
                        horizontalWidth: horizontalWidth,
                        horizontalHeight: horizontalHeight,
                        fontSize: fontSize,
                      ),
                    )
                  else
                    SizedBox(
                      width: constraints.maxWidth,
                      height: buttonsHeight,
                      child: _Articles.interactive(
                        verticalWidth: verticalWidth,
                        verticalHeight: verticalHeight,
                        horizontalWidth: horizontalWidth,
                        horizontalHeight: horizontalHeight,
                        fontSize: fontSize,
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _Articles extends ConsumerWidget {
  const _Articles.interactive({
    required this.verticalWidth,
    required this.verticalHeight,
    required this.horizontalWidth,
    required this.horizontalHeight,
    required this.fontSize,
  }) : _articles = null,
       _interactive = true;

  const _Articles.subset({
    required List<Article> articles,
    required this.verticalWidth,
    required this.verticalHeight,
    required this.horizontalWidth,
    required this.horizontalHeight,
    required this.fontSize,
  }) : _articles = articles,
       _interactive = false;

  final List<Article>? _articles;
  final bool _interactive;
  final double verticalWidth;
  final double verticalHeight;
  final double horizontalWidth;
  final double horizontalHeight;
  final double fontSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(answersLayoutControllerProvider);

    return switch (state) {
      AnswersLayout.standard => _ArticlesLayoutStandard(
        articles: _articles,
        interactive: _interactive,
        verticalWidth: verticalWidth,
        verticalHeight: verticalHeight,
        horizontalWidth: horizontalWidth,
        horizontalHeight: horizontalHeight,
        fontSize: fontSize,
      ),
      AnswersLayout.horizontal => _ArticlesLayoutHorizontal(
        articles: _articles,
        interactive: _interactive,
        width: horizontalWidth,
        height: horizontalHeight,
        fontSize: fontSize,
      ),
    };
  }
}

class _ArticlesLayoutStandard extends ConsumerWidget {
  const _ArticlesLayoutStandard({
    required this.articles,
    required this.interactive,
    required this.verticalWidth,
    required this.verticalHeight,
    required this.horizontalWidth,
    required this.horizontalHeight,
    required this.fontSize,
  });

  final List<Article>? articles;
  final bool interactive;
  final double verticalWidth;
  final double verticalHeight;
  final double horizontalWidth;
  final double horizontalHeight;
  final double fontSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      spacing: context.customSpacings.s.mainAxisExtent,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (interactive || articles?.contains(Article.der) == true)
              ArticleButton(
                article: Article.der,
                width: verticalWidth,
                horizontalTextWidthPercent: 0.6,
                height: verticalHeight,
                fontSize: fontSize,
                onPressed: interactive
                    ? () => ref.read(gameStateControllerProvider.notifier).onAnswer(Article.der)
                    : null,
              )
            else
              SizedBox(width: verticalWidth, height: verticalHeight),
            if (interactive || articles?.contains(Article.die) == true)
              ArticleButton(
                article: Article.die,
                horizontalTextWidthPercent: 0.6,
                width: verticalWidth,
                height: verticalHeight,
                fontSize: fontSize,
                onPressed: interactive
                    ? () => ref.read(gameStateControllerProvider.notifier).onAnswer(Article.die)
                    : null,
              )
            else
              SizedBox(width: verticalWidth, height: verticalHeight),
          ],
        ),
        if (interactive || articles?.contains(Article.das) == true)
          ArticleButton(
            article: Article.das,
            width: horizontalWidth,
            horizontalTextWidthPercent: 0.6,
            height: horizontalHeight,
            fontSize: fontSize,
            onPressed: interactive ? () => ref.read(gameStateControllerProvider.notifier).onAnswer(Article.das) : null,
          )
        else
          SizedBox(width: horizontalWidth, height: horizontalHeight),
      ],
    );
  }
}

class _ArticlesLayoutHorizontal extends ConsumerWidget {
  const _ArticlesLayoutHorizontal({
    required this.articles,
    required this.interactive,
    required this.width,
    required this.height,
    required this.fontSize,
  });

  final List<Article>? articles;
  final bool interactive;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: Article.values
          .map(
            (article) => interactive || articles?.contains(article) == true
                ? ArticleButton(
                    article: article,
                    width: width,
                    horizontalTextWidthPercent: 0.6,
                    height: height,
                    fontSize: fontSize,
                    onPressed: interactive
                        ? () => ref.read(gameStateControllerProvider.notifier).onAnswer(article)
                        : null,
                  )
                : SizedBox(width: width, height: height),
          )
          .toList(),
    );
  }
}

class _HintButton extends StatefulWidget {
  const _HintButton({required this.tip, required this.noun});

  final Tip tip;
  final String noun;

  @override
  State<_HintButton> createState() => __HintButtonState();
}

class __HintButtonState extends State<_HintButton> {
  final OverlayPortalController _tooltipController = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return OverlayPortal(
      controller: _tooltipController,
      overlayChildBuilder: (context) {
        return SizedBox.fromSize(
          size: MediaQuery.sizeOf(context),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox.fromSize(
                size: MediaQuery.sizeOf(context),
                child: GestureDetector(
                  onTap: _tooltipController.toggle,
                  child: ColoredBox(color: Colors.black.withValues(alpha: 0.35)),
                ),
              ),
              TipCard(tip: widget.tip, noun: widget.noun, onClose: _tooltipController.toggle),
            ],
          ),
        );
      },
      child: BasicMaterialIconButton(onPressed: _tooltipController.toggle, icon: Icons.lightbulb_outline),
    );
  }
}
