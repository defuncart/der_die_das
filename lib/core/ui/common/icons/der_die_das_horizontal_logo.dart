import 'package:der_die_das/core/db/nouns_database/enums/article.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/icons/article_icons.dart';
import 'package:flutter/material.dart';

class DerDieDasHorizontalLogo extends StatelessWidget {
  const DerDieDasHorizontalLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth * 0.3;
        final height = width * 0.5;
        final fontSize = height * 0.75;

        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: Article.values
              .map(
                (article) => ArticleIcon(
                  article: article,
                  width: width,
                  horizontalTextWidthPercent: 0.8,
                  height: height,
                  fontSize: fontSize,
                  borderRadius: context.customRadii.xs,
                ),
              )
              .toList(),
        );
      },
    );
  }
}
