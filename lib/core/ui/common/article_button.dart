import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/theme/app_theme.dart';
import 'package:der_die_das/core/ui/common/basic_button.dart';
import 'package:der_die_das/core/ui/common/rounded_rectangle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ArticleButton extends StatelessWidget {
  const ArticleButton({
    required this.article,
    required this.width,
    required this.height,
    required this.fontSize,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final Article article;
  final double width;
  final double height;
  final double fontSize;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isHorizontal = width > height;
    final child = switch (article) {
      Article.der => isHorizontal
          ? const Column(
              // TODO padding might be better
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('D E R')],
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
          ? const Column(
              // TODO padding might be better
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('D I E')],
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('D'),
                const Text('I'),
                const Text('E'),
              ].intersperse(Gap(fontSize * 0.05)),
            ),
      Article.das => const Column(
          // TODO padding might be better
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text('D A S')],
        ),
    };
    final color = switch (article) {
      Article.der => context.customColorScheme.der,
      Article.die => context.customColorScheme.die,
      Article.das => context.customColorScheme.das,
    };

    final widget = RoundedRectangle(
      width: width,
      height: height,
      color: color,
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: fontSize,
          color: Theme.of(context).scaffoldBackgroundColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lovelo',
        ),
        child: child,
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
