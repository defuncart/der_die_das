import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/icons/article_content.dart';
import 'package:der_die_das/core/ui/common/rounded_rectangle.dart';
import 'package:flutter/material.dart';

class ArticleIcon extends StatelessWidget with ArticleContent {
  const ArticleIcon({
    super.key,
    required this.article,
    required this.width,
    required this.horizontalTextWidthPercent,
    required this.height,
    required this.fontSize,
    this.borderRadius,
  });

  final Article article;
  final double width;
  final double horizontalTextWidthPercent;
  final double height;
  final double fontSize;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final isHorizontal = width > height;
    final child = SizedBox(
      width: width * horizontalTextWidthPercent,
      child: switch (article) {
        Article.der =>
          isHorizontal
              ? derHorizontal
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: fontSize * 0.025,
                  children: const [Text('D'), Text('E'), Text('R')],
                ),
        Article.die =>
          isHorizontal
              ? dieHorizontal
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: fontSize * 0.05,
                  children: const [Text('D'), Text('I'), Text('E')],
                ),
        Article.das => dasHorizontal,
      },
    );
    final color = switch (article) {
      Article.der => context.customColorScheme.der,
      Article.die => context.customColorScheme.die,
      Article.das => context.customColorScheme.das,
    };

    // when horizontal, use full height + offset to correctly center
    double? textHeight;
    if (isHorizontal) {
      textHeight = (height / fontSize) * 1.05;
    }

    return RoundedRectangle(
      width: width,
      height: height,
      color: color,
      borderRadius: borderRadius,
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: fontSize,
          color: Theme.of(context).scaffoldBackgroundColor,
          fontWeight: FontWeight.bold,
          fontFamily: AppFonts.lovelo,
          height: textHeight,
        ),
        child: Center(child: child),
      ),
    );
  }
}
