import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/basic_button.dart';
import 'package:der_die_das/core/ui/common/rounded_rectangle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ArticleButton extends StatelessWidget {
  const ArticleButton({
    super.key,
    required this.article,
    required this.width,
    required this.height,
    required this.fontSize,
    this.borderRadius,
    this.onPressed,
  });

  final Article article;
  final double width;
  final double height;
  final double fontSize;
  final BorderRadius? borderRadius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isHorizontal = width > height;
    final child = switch (article) {
      Article.der => isHorizontal
          ? Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [Text('D'), Text('E'), Text('R')].intersperse(Gap(width * 0.05)),
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('D'),
                const Text('E'),
                const Text('R'),
              ].intersperse(Gap(fontSize * 0.025)),
            ),
      Article.die => isHorizontal
          ? Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [Text('D'), Text('I'), Text('E')].intersperse(Gap(width * 0.075)),
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('D'),
                const Text('I'),
                const Text('E'),
              ].intersperse(Gap(fontSize * 0.05)),
            ),
      Article.das => Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [Text('D'), Text('A'), Text('S')].intersperse(Gap(width * 0.05)),
        ),
    };
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

    final widget = RoundedRectangle(
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
        child: Center(
          child: child,
        ),
      ),
    );

    return onPressed != null
        ? BasicButton(
            onTap: onPressed!,
            child: widget,
          )
        : widget;
  }
}
