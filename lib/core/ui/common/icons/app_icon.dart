import 'package:der_die_das/core/extensions/list_widget_extensions.dart';
import 'package:der_die_das/core/theme/theme.dart';
import 'package:der_die_das/core/ui/common/icons/article_content.dart';
import 'package:flutter/material.dart';

enum AppIconBorder {
  none,
  round,
  iOS,
  androidRoundRect,
}

class AppIcon extends StatelessWidget with ArticleContent {
  const AppIcon({
    super.key,
    this.size = 512,
    this.border = AppIconBorder.iOS,
    this.hasTransparentBackground = false,
    this.hasSpacer = true,
  });

  final double size;
  final AppIconBorder border;
  final bool hasTransparentBackground;
  final bool hasSpacer;

  @override
  Widget build(BuildContext context) {
    final fontSize = size * 0.225;
    final textStyle = TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      fontFamily: AppFonts.lovelo,
    );

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: switch (border) {
          AppIconBorder.none => null,
          _ => Border.all(
              width: size * 0.0175,
              color: context.textTheme.headlineLarge!.color!,
            ),
        },
        borderRadius: switch (border) {
          AppIconBorder.iOS => BorderRadius.circular(size * 0.2237),
          AppIconBorder.androidRoundRect => BorderRadius.circular(size * 0.0833),
          _ => null,
        },
        shape: switch (border) {
          AppIconBorder.round => BoxShape.circle,
          _ => BoxShape.rectangle,
        },
        color: hasTransparentBackground ? null : Theme.of(context).scaffoldBackgroundColor,
      ),
      child: _IconClipper(
        border: border,
        size: size,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: size * 0.05),
            child: SizedBox(
              width: size * 0.6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DefaultTextStyle(
                    style: textStyle.copyWith(
                      color: context.customColorScheme.der,
                    ),
                    child: derHorizontal,
                  ),
                  DefaultTextStyle(
                    style: textStyle.copyWith(
                      color: context.customColorScheme.die,
                    ),
                    child: dieHorizontal,
                  ),
                  DefaultTextStyle(
                    style: textStyle.copyWith(
                      color: context.customColorScheme.das,
                    ),
                    child: dasHorizontal,
                  ),
                ].intersperse(
                  hasSpacer ? context.customSpacings.s : const SizedBox.shrink(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _IconClipper extends StatelessWidget {
  const _IconClipper({
    Key? key,
    required this.border,
    required this.size,
    required this.child,
  }) : super(key: key);

  final AppIconBorder border;
  final double size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return switch (border) {
      AppIconBorder.none => child,
      AppIconBorder.iOS => ClipRRect(
          borderRadius: BorderRadius.circular(size * 0.2237),
          child: child,
        ),
      AppIconBorder.androidRoundRect => ClipRRect(
          borderRadius: BorderRadius.circular(size * 0.0833),
          child: child,
        ),
      AppIconBorder.round => ClipOval(
          child: child,
        ),
    };
  }
}
