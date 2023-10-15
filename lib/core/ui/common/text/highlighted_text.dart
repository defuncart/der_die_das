import 'package:flutter/material.dart';

/// Highlights text of the form
/// `Here is a <color>highlight</color>.`
class HighlightedText extends StatelessWidget {
  const HighlightedText(
    this.text, {
    super.key,
    this.textStyle,
    required this.highlightColor,
  });

  final String text;
  final TextStyle? textStyle;
  final Color highlightColor;

  @override
  Widget build(BuildContext context) {
    final effectiveTextStyle = textStyle ?? DefaultTextStyle.of(context).style;

    final spans = <TextSpan>[];
    text.splitMapJoin(RegExp(r'(\<color\>([a-zA-Zäöü\-]*)\<\/color\>)'), onMatch: (match) {
      spans.add(TextSpan(
        text: match.group(2),
        style: effectiveTextStyle.copyWith(
          color: highlightColor,
        ),
      ));
      return '';
    }, onNonMatch: (text) {
      spans.add(TextSpan(
        text: text,
        style: effectiveTextStyle,
      ));
      return '';
    });

    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: textStyle,
        children: spans,
      ),
    );
  }
}
