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

class CustomRadii extends ThemeExtension<CustomRadii> {
  const CustomRadii({
    required this.l,
    required this.m,
    required this.s,
    required this.xs,
  });

  final BorderRadius l;
  final BorderRadius m;
  final BorderRadius s;
  final BorderRadius xs;

  static final CustomRadii light = CustomRadii(
    l: _$CustomRadii.l[0],
    m: _$CustomRadii.m[0],
    s: _$CustomRadii.s[0],
    xs: _$CustomRadii.xs[0],
  );

  static final themes = [
    light,
  ];

  @override
  CustomRadii copyWith({
    BorderRadius? l,
    BorderRadius? m,
    BorderRadius? s,
    BorderRadius? xs,
  }) {
    return CustomRadii(
      l: l ?? this.l,
      m: m ?? this.m,
      s: s ?? this.s,
      xs: xs ?? this.xs,
    );
  }

  @override
  CustomRadii lerp(covariant ThemeExtension<CustomRadii>? other, double t) {
    if (other is! CustomRadii) return this as CustomRadii;
    return CustomRadii(
      l: t < 0.5 ? l : other.l,
      m: t < 0.5 ? m : other.m,
      s: t < 0.5 ? s : other.s,
      xs: t < 0.5 ? xs : other.xs,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomRadii &&
            const DeepCollectionEquality().equals(l, other.l) &&
            const DeepCollectionEquality().equals(m, other.m) &&
            const DeepCollectionEquality().equals(s, other.s) &&
            const DeepCollectionEquality().equals(xs, other.xs));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(l),
      const DeepCollectionEquality().hash(m),
      const DeepCollectionEquality().hash(s),
      const DeepCollectionEquality().hash(xs),
    );
  }
}

extension CustomRadiiBuildContext on BuildContext {
  CustomRadii get customRadii => Theme.of(this).extension<CustomRadii>()!;
}

class CustomSpacings extends ThemeExtension<CustomSpacings> {
  const CustomSpacings({
    required this.l,
    required this.m,
    required this.s,
    required this.xs,
  });

  final Gap l;
  final Gap m;
  final Gap s;
  final Gap xs;

  static const CustomSpacings light = CustomSpacings(
    l: Gap(_Spacings.l),
    m: Gap(_Spacings.m),
    s: Gap(_Spacings.s),
    xs: Gap(_Spacings.xs),
  );

  static const themes = [
    light,
  ];

  @override
  CustomSpacings copyWith({
    Gap? l,
    Gap? m,
    Gap? s,
    Gap? xs,
  }) {
    return CustomSpacings(
      l: l ?? this.l,
      m: m ?? this.m,
      s: s ?? this.s,
      xs: xs ?? this.xs,
    );
  }

  @override
  CustomSpacings lerp(covariant ThemeExtension<CustomSpacings>? other, double t) {
    if (other is! CustomSpacings) return this as CustomSpacings;
    return CustomSpacings(
      l: t < 0.5 ? l : other.l,
      m: t < 0.5 ? m : other.m,
      s: t < 0.5 ? s : other.s,
      xs: t < 0.5 ? xs : other.xs,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomSpacings &&
            const DeepCollectionEquality().equals(l, other.l) &&
            const DeepCollectionEquality().equals(m, other.m) &&
            const DeepCollectionEquality().equals(s, other.s) &&
            const DeepCollectionEquality().equals(xs, other.xs));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(l),
      const DeepCollectionEquality().hash(m),
      const DeepCollectionEquality().hash(s),
      const DeepCollectionEquality().hash(xs),
    );
  }
}

extension CustomSpacingsBuildContext on BuildContext {
  CustomSpacings get customSpacings => Theme.of(this).extension<CustomSpacings>()!;
}

class CustomPaddings extends ThemeExtension<CustomPaddings> {
  const CustomPaddings({
    required this.l,
    required this.m,
    required this.s,
    required this.xs,
  });

  final EdgeInsets l;
  final EdgeInsets m;
  final EdgeInsets s;
  final EdgeInsets xs;

  static const CustomPaddings light = CustomPaddings(
    l: EdgeInsets.all(_Spacings.l),
    m: EdgeInsets.all(_Spacings.m),
    s: EdgeInsets.all(_Spacings.s),
    xs: EdgeInsets.all(_Spacings.xs),
  );

  static const themes = [
    light,
  ];

  @override
  CustomPaddings copyWith({
    EdgeInsets? l,
    EdgeInsets? m,
    EdgeInsets? s,
    EdgeInsets? xs,
  }) {
    return CustomPaddings(
      l: l ?? this.l,
      m: m ?? this.m,
      s: s ?? this.s,
      xs: xs ?? this.xs,
    );
  }

  @override
  CustomPaddings lerp(covariant ThemeExtension<CustomPaddings>? other, double t) {
    if (other is! CustomPaddings) return this as CustomPaddings;
    return CustomPaddings(
      l: t < 0.5 ? l : other.l,
      m: t < 0.5 ? m : other.m,
      s: t < 0.5 ? s : other.s,
      xs: t < 0.5 ? xs : other.xs,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomPaddings &&
            const DeepCollectionEquality().equals(l, other.l) &&
            const DeepCollectionEquality().equals(m, other.m) &&
            const DeepCollectionEquality().equals(s, other.s) &&
            const DeepCollectionEquality().equals(xs, other.xs));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(l),
      const DeepCollectionEquality().hash(m),
      const DeepCollectionEquality().hash(s),
      const DeepCollectionEquality().hash(xs),
    );
  }
}

extension CustomPaddingsBuildContext on BuildContext {
  CustomPaddings get customPaddings => Theme.of(this).extension<CustomPaddings>()!;
}
