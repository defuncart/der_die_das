import 'package:auto_size_text/auto_size_text.dart';
import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/db/tips/model/tip.dart';
import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/l10n/l10n_extension.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/article_button.dart';
import 'package:der_die_das/core/ui/common/basic_button.dart';
import 'package:der_die_das/core/ui/common/basic_material_close_button.dart';
import 'package:der_die_das/core/ui/common/basic_material_icon_button.dart';
import 'package:der_die_das/core/ui/common/highlighted_text.dart';
import 'package:der_die_das/core/ui/common/rounded_rectangle.dart';
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
        if (data.value.progress == 1) {
          Future.microtask(
            () => context.pushReplacement(ResultsScreen.path),
          );
          return const Scaffold();
        }
        return _GameScreen(state: data.value);
      },
      orElse: () => const Scaffold(),
    );
  }
}

class _GameScreen extends ConsumerWidget {
  const _GameScreen({
    Key? key,
    required this.state,
  }) : super(key: key);

  final GameState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                      color: context.colorScheme.primary.withOpacity(0.25),
                      borderRadius: context.customRadii.s,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: boxConstraints.maxWidth * state.progress,
                    decoration: BoxDecoration(
                      color: context.colorScheme.primary,
                      borderRadius: context.customRadii.s,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        actions: [
          if (state.tipId != null)
            _HintButton(
              tipId: state.tipId!,
            )
          else
            const SizedBox(
              width: kMinInteractiveDimension,
            )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 8,
          left: 8,
          right: 8,
          bottom: MediaQuery.paddingOf(context).bottom == 0 ? 8 : 0,
        ),
        child: LayoutBuilder(builder: (context, constraints) {
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
              mainAxisAlignment:
                  state.answeredIncorrectly != null ? MainAxisAlignment.start : MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      state.withoutArticle,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        color: context.textTheme.headlineMedium?.color,
                      ),
                      maxLines: 1,
                    ),
                    if (state.ambiguousLabel != null)
                      AutoSizeText(
                        state.ambiguousLabel!,
                        style: TextStyle(
                          fontSize: fontSize * 0.25,
                        ),
                        maxLines: 1,
                      ),
                  ],
                ),
                if (state.answeredIncorrectly != null)
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ...state.answeredIncorrectly!.articles.map(
                                  (article) => ArticleButton(
                                    article: article,
                                    width: horizontalWidth,
                                    height: horizontalHeight,
                                    fontSize: fontSize,
                                    onPressed: () {},
                                  ),
                                ),
                                if (state.tipId != null)
                                  _TipCard(
                                    tipIndex: state.tipId!,
                                  ),
                              ].intersperse(context.customSpacings.l),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: BasicButton(
                            onTap: ref.read(gameStateControllerProvider.notifier).onContinue,
                            child: RoundedRectangle(
                              width: horizontalWidth,
                              height: horizontalHeight * 0.6,
                              color: context.colorScheme.primary,
                              child: Text(
                                context.l10n.gameContinueLabel,
                                style: context.textTheme.headlineMedium?.copyWith(
                                  color: context.colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].intersperse(context.customSpacings.m),
                    ),
                  )
                else if (state.answeredCorrectly != null)
                  _Articles.subset(
                    articles: state.answeredCorrectly!.articles.toList(),
                    verticalWidth: verticalWidth,
                    verticalHeight: verticalHeight,
                    horizontalWidth: horizontalWidth,
                    horizontalHeight: horizontalHeight,
                    fontSize: fontSize,
                  )
                else
                  _Articles.interactive(
                    verticalWidth: verticalWidth,
                    verticalHeight: verticalHeight,
                    horizontalWidth: horizontalWidth,
                    horizontalHeight: horizontalHeight,
                    fontSize: fontSize,
                  ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class _Articles extends ConsumerWidget {
  const _Articles.interactive({
    Key? key,
    required this.verticalWidth,
    required this.verticalHeight,
    required this.horizontalWidth,
    required this.horizontalHeight,
    required this.fontSize,
  })  : _articles = null,
        _interactive = true,
        super(key: key);

  const _Articles.subset({
    Key? key,
    required List<Article> articles,
    required this.verticalWidth,
    required this.verticalHeight,
    required this.horizontalWidth,
    required this.horizontalHeight,
    required this.fontSize,
  })  : _articles = articles,
        _interactive = false,
        super(key: key);

  final List<Article>? _articles;
  final bool _interactive;
  final double verticalWidth;
  final double verticalHeight;
  final double horizontalWidth;
  final double horizontalHeight;
  final double fontSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (_interactive || _articles?.contains(Article.der) == true)
              ArticleButton(
                article: Article.der,
                width: verticalWidth,
                height: verticalHeight,
                fontSize: fontSize,
                onPressed:
                    _interactive ? () => ref.read(gameStateControllerProvider.notifier).onAnswer(Article.der) : null,
              )
            else
              SizedBox(
                width: verticalWidth,
                height: verticalHeight,
              ),
            if (_interactive || _articles?.contains(Article.die) == true)
              ArticleButton(
                article: Article.die,
                width: verticalWidth,
                height: verticalHeight,
                fontSize: fontSize,
                onPressed:
                    _interactive ? () => ref.read(gameStateControllerProvider.notifier).onAnswer(Article.die) : null,
              )
            else
              SizedBox(
                width: verticalWidth,
                height: verticalHeight,
              ),
          ],
        ),
        if (_interactive || _articles?.contains(Article.das) == true)
          ArticleButton(
            article: Article.das,
            width: horizontalWidth,
            height: horizontalHeight,
            fontSize: fontSize,
            onPressed: _interactive ? () => ref.read(gameStateControllerProvider.notifier).onAnswer(Article.das) : null,
          )
        else
          SizedBox(
            width: horizontalWidth,
            height: horizontalHeight,
          ),
      ].intersperse(context.customSpacings.s),
    );
  }
}

class _HintButton extends StatefulWidget {
  const _HintButton({
    Key? key,
    required this.tipId,
  }) : super(key: key);

  final int tipId;

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
            children: [
              SizedBox.fromSize(
                size: MediaQuery.sizeOf(context),
                child: GestureDetector(
                  onTap: _tooltipController.toggle,
                  child: ColoredBox(
                    color: Colors.black.withOpacity(0.35),
                  ),
                ),
              ),
              Positioned(
                right: 32,
                top: MediaQuery.paddingOf(context).top + kToolbarHeight,
                child: _TipCard(
                  tipIndex: widget.tipId,
                ),
              ),
            ],
          ),
        );
      },
      child: BasicMaterialIconButton(
        onPressed: _tooltipController.toggle,
        icon: Icons.lightbulb_outline,
      ),
    );
  }
}

class _TipCard extends StatelessWidget {
  const _TipCard({
    Key? key,
    required this.tipIndex,
  }) : super(key: key);

  final int tipIndex;

  @override
  Widget build(BuildContext context) {
    final text = getTip(
      context: context,
      index: tipIndex,
    ).description;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: context.customRadii.xs,
        side: BorderSide(
          color: context.colorScheme.primary,
          width: 4,
        ),
      ),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width - 64,
        ),
        padding: context.customPaddings.m,
        child: HighlightedText(
          text,
          highlightColor: context.colorScheme.primary,
          textStyle: context.textTheme.headlineMedium?.copyWith(
            color: context.textTheme.bodyMedium?.color,
          ),
        ),
      ),
    );
  }
}
