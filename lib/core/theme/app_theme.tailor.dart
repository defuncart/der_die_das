// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class CustomColorScheme extends ThemeExtension<CustomColorScheme> {
  const CustomColorScheme({
    required this.der,
  });

  final Color der;

  static const CustomColorScheme light = CustomColorScheme(
    der: AppColors.blue,
  );

  static const themes = [
    light,
  ];

  @override
  CustomColorScheme copyWith({
    Color? der,
  }) {
    return CustomColorScheme(
      der: der ?? this.der,
    );
  }

  @override
  CustomColorScheme lerp(covariant ThemeExtension<CustomColorScheme>? other, double t) {
    if (other is! CustomColorScheme) return this as CustomColorScheme;
    return CustomColorScheme(
      der: Color.lerp(der, other.der, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomColorScheme &&
            const DeepCollectionEquality().equals(der, other.der));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(der),
    );
  }
}

extension CustomColorSchemeBuildContext on BuildContext {
  CustomColorScheme get customColorScheme => Theme.of(this).extension<CustomColorScheme>()!;
}
