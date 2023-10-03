// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class CustomColorScheme extends ThemeExtension<CustomColorScheme> {
  const CustomColorScheme({
    required this.das,
    required this.defaultButton,
    required this.der,
    required this.die,
    required this.green,
    required this.levelIcon,
    required this.red,
  });

  final Color das;
  final Color defaultButton;
  final Color der;
  final Color die;
  final Color green;
  final Color levelIcon;
  final Color red;

  static const CustomColorScheme light = CustomColorScheme(
    das: _AppColors.black,
    defaultButton: _AppColors.black,
    der: _AppColors.blue,
    die: _AppColors.brown,
    green: _AppColors.green,
    levelIcon: _AppColors.purple,
    red: _AppColors.red,
  );

  static const themes = [
    light,
  ];

  @override
  CustomColorScheme copyWith({
    Color? das,
    Color? defaultButton,
    Color? der,
    Color? die,
    Color? green,
    Color? levelIcon,
    Color? red,
  }) {
    return CustomColorScheme(
      das: das ?? this.das,
      defaultButton: defaultButton ?? this.defaultButton,
      der: der ?? this.der,
      die: die ?? this.die,
      green: green ?? this.green,
      levelIcon: levelIcon ?? this.levelIcon,
      red: red ?? this.red,
    );
  }

  @override
  CustomColorScheme lerp(covariant ThemeExtension<CustomColorScheme>? other, double t) {
    if (other is! CustomColorScheme) return this as CustomColorScheme;
    return CustomColorScheme(
      das: Color.lerp(das, other.das, t)!,
      defaultButton: Color.lerp(defaultButton, other.defaultButton, t)!,
      der: Color.lerp(der, other.der, t)!,
      die: Color.lerp(die, other.die, t)!,
      green: Color.lerp(green, other.green, t)!,
      levelIcon: Color.lerp(levelIcon, other.levelIcon, t)!,
      red: Color.lerp(red, other.red, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomColorScheme &&
            const DeepCollectionEquality().equals(das, other.das) &&
            const DeepCollectionEquality().equals(defaultButton, other.defaultButton) &&
            const DeepCollectionEquality().equals(der, other.der) &&
            const DeepCollectionEquality().equals(die, other.die) &&
            const DeepCollectionEquality().equals(green, other.green) &&
            const DeepCollectionEquality().equals(levelIcon, other.levelIcon) &&
            const DeepCollectionEquality().equals(red, other.red));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(das),
      const DeepCollectionEquality().hash(defaultButton),
      const DeepCollectionEquality().hash(der),
      const DeepCollectionEquality().hash(die),
      const DeepCollectionEquality().hash(green),
      const DeepCollectionEquality().hash(levelIcon),
      const DeepCollectionEquality().hash(red),
    );
  }
}

extension CustomColorSchemeBuildContext on BuildContext {
  CustomColorScheme get customColorScheme => Theme.of(this).extension<CustomColorScheme>()!;
}
