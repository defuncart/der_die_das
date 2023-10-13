import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/ui/common/buttons/basic_button.dart';
import 'package:der_die_das/core/ui/common/icons/article_icons.dart';
import 'package:flutter/material.dart';

class ArticleButton extends StatelessWidget {
  const ArticleButton({
    super.key,
    required this.article,
    required this.width,
    required this.horizontalTextWidthPercent,
    required this.height,
    required this.fontSize,
    this.borderRadius,
    this.onPressed,
  });

  final Article article;
  final double width;
  final double horizontalTextWidthPercent;
  final double height;
  final double fontSize;
  final BorderRadius? borderRadius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return BasicButton(
      onPressed: () => onPressed?.call(),
      child: ArticleIcon(
        article: article,
        width: width,
        horizontalTextWidthPercent: horizontalTextWidthPercent,
        height: height,
        fontSize: fontSize,
        borderRadius: borderRadius,
      ),
    );
  }
}
