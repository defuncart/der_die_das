import 'package:flutter/widgets.dart';

extension ListWidgetExtensions on List<Widget> {
  /// Intersperses [between] between all elements of instance
  List<Widget> intersperse(Widget between) {
    return fold(<Widget>[], (previousValue, element) {
      if (previousValue.isNotEmpty) {
        previousValue.add(between);
      }
      previousValue.add(element);
      return previousValue;
    });
  }
}
