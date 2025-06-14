// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$CustomColorSchemeTailorMixin on ThemeExtension<CustomColorScheme> {
  Color get der;
  Color get die;
  Color get das;
  Color get levelIcon;
  Color get defaultButton;

  @override
  CustomColorScheme copyWith({
    Color? der,
    Color? die,
    Color? das,
    Color? levelIcon,
    Color? defaultButton,
  }) {
    return CustomColorScheme(
      der: der ?? this.der,
      die: die ?? this.die,
      das: das ?? this.das,
      levelIcon: levelIcon ?? this.levelIcon,
      defaultButton: defaultButton ?? this.defaultButton,
    );
  }

  @override
  CustomColorScheme lerp(covariant ThemeExtension<CustomColorScheme>? other, double t) {
    if (other is! CustomColorScheme) return this as CustomColorScheme;
    return CustomColorScheme(
      der: Color.lerp(der, other.der, t)!,
      die: Color.lerp(die, other.die, t)!,
      das: Color.lerp(das, other.das, t)!,
      levelIcon: Color.lerp(levelIcon, other.levelIcon, t)!,
      defaultButton: Color.lerp(defaultButton, other.defaultButton, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomColorScheme &&
            const DeepCollectionEquality().equals(der, other.der) &&
            const DeepCollectionEquality().equals(die, other.die) &&
            const DeepCollectionEquality().equals(das, other.das) &&
            const DeepCollectionEquality().equals(levelIcon, other.levelIcon) &&
            const DeepCollectionEquality().equals(defaultButton, other.defaultButton));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(der),
      const DeepCollectionEquality().hash(die),
      const DeepCollectionEquality().hash(das),
      const DeepCollectionEquality().hash(levelIcon),
      const DeepCollectionEquality().hash(defaultButton),
    );
  }
}

extension CustomColorSchemeBuildContext on BuildContext {
  CustomColorScheme get customColorScheme => Theme.of(this).extension<CustomColorScheme>()!;
}

mixin _$CustomRadiiTailorMixin on ThemeExtension<CustomRadii> {
  BorderRadius get xs;
  BorderRadius get s;
  BorderRadius get m;
  BorderRadius get l;

  @override
  CustomRadii copyWith({
    BorderRadius? xs,
    BorderRadius? s,
    BorderRadius? m,
    BorderRadius? l,
  }) {
    return CustomRadii(
      xs: xs ?? this.xs,
      s: s ?? this.s,
      m: m ?? this.m,
      l: l ?? this.l,
    );
  }

  @override
  CustomRadii lerp(covariant ThemeExtension<CustomRadii>? other, double t) {
    if (other is! CustomRadii) return this as CustomRadii;
    return CustomRadii(
      xs: t < 0.5 ? xs : other.xs,
      s: t < 0.5 ? s : other.s,
      m: t < 0.5 ? m : other.m,
      l: t < 0.5 ? l : other.l,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomRadii &&
            const DeepCollectionEquality().equals(xs, other.xs) &&
            const DeepCollectionEquality().equals(s, other.s) &&
            const DeepCollectionEquality().equals(m, other.m) &&
            const DeepCollectionEquality().equals(l, other.l));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(xs),
      const DeepCollectionEquality().hash(s),
      const DeepCollectionEquality().hash(m),
      const DeepCollectionEquality().hash(l),
    );
  }
}

extension CustomRadiiBuildContext on BuildContext {
  CustomRadii get customRadii => Theme.of(this).extension<CustomRadii>()!;
}

mixin _$CustomSpacingsTailorMixin on ThemeExtension<CustomSpacings> {
  double get xs;
  double get s;
  double get m;
  double get l;

  @override
  CustomSpacings copyWith({
    double? xs,
    double? s,
    double? m,
    double? l,
  }) {
    return CustomSpacings(
      xs: xs ?? this.xs,
      s: s ?? this.s,
      m: m ?? this.m,
      l: l ?? this.l,
    );
  }

  @override
  CustomSpacings lerp(covariant ThemeExtension<CustomSpacings>? other, double t) {
    if (other is! CustomSpacings) return this as CustomSpacings;
    return CustomSpacings(
      xs: t < 0.5 ? xs : other.xs,
      s: t < 0.5 ? s : other.s,
      m: t < 0.5 ? m : other.m,
      l: t < 0.5 ? l : other.l,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomSpacings &&
            const DeepCollectionEquality().equals(xs, other.xs) &&
            const DeepCollectionEquality().equals(s, other.s) &&
            const DeepCollectionEquality().equals(m, other.m) &&
            const DeepCollectionEquality().equals(l, other.l));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(xs),
      const DeepCollectionEquality().hash(s),
      const DeepCollectionEquality().hash(m),
      const DeepCollectionEquality().hash(l),
    );
  }
}

extension CustomSpacingsBuildContext on BuildContext {
  CustomSpacings get customSpacings => Theme.of(this).extension<CustomSpacings>()!;
}

mixin _$CustomPaddingsTailorMixin on ThemeExtension<CustomPaddings> {
  EdgeInsets get xs;
  EdgeInsets get xsHorizontal;
  EdgeInsets get xsVertical;
  EdgeInsets get s;
  EdgeInsets get sHorizontal;
  EdgeInsets get sVertical;
  EdgeInsets get m;
  EdgeInsets get mHorizontal;
  EdgeInsets get mVertical;
  EdgeInsets get l;
  EdgeInsets get lHorizontal;
  EdgeInsets get lVertical;

  @override
  CustomPaddings copyWith({
    EdgeInsets? xs,
    EdgeInsets? xsHorizontal,
    EdgeInsets? xsVertical,
    EdgeInsets? s,
    EdgeInsets? sHorizontal,
    EdgeInsets? sVertical,
    EdgeInsets? m,
    EdgeInsets? mHorizontal,
    EdgeInsets? mVertical,
    EdgeInsets? l,
    EdgeInsets? lHorizontal,
    EdgeInsets? lVertical,
  }) {
    return CustomPaddings(
      xs: xs ?? this.xs,
      xsHorizontal: xsHorizontal ?? this.xsHorizontal,
      xsVertical: xsVertical ?? this.xsVertical,
      s: s ?? this.s,
      sHorizontal: sHorizontal ?? this.sHorizontal,
      sVertical: sVertical ?? this.sVertical,
      m: m ?? this.m,
      mHorizontal: mHorizontal ?? this.mHorizontal,
      mVertical: mVertical ?? this.mVertical,
      l: l ?? this.l,
      lHorizontal: lHorizontal ?? this.lHorizontal,
      lVertical: lVertical ?? this.lVertical,
    );
  }

  @override
  CustomPaddings lerp(covariant ThemeExtension<CustomPaddings>? other, double t) {
    if (other is! CustomPaddings) return this as CustomPaddings;
    return CustomPaddings(
      xs: t < 0.5 ? xs : other.xs,
      xsHorizontal: t < 0.5 ? xsHorizontal : other.xsHorizontal,
      xsVertical: t < 0.5 ? xsVertical : other.xsVertical,
      s: t < 0.5 ? s : other.s,
      sHorizontal: t < 0.5 ? sHorizontal : other.sHorizontal,
      sVertical: t < 0.5 ? sVertical : other.sVertical,
      m: t < 0.5 ? m : other.m,
      mHorizontal: t < 0.5 ? mHorizontal : other.mHorizontal,
      mVertical: t < 0.5 ? mVertical : other.mVertical,
      l: t < 0.5 ? l : other.l,
      lHorizontal: t < 0.5 ? lHorizontal : other.lHorizontal,
      lVertical: t < 0.5 ? lVertical : other.lVertical,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomPaddings &&
            const DeepCollectionEquality().equals(xs, other.xs) &&
            const DeepCollectionEquality().equals(xsHorizontal, other.xsHorizontal) &&
            const DeepCollectionEquality().equals(xsVertical, other.xsVertical) &&
            const DeepCollectionEquality().equals(s, other.s) &&
            const DeepCollectionEquality().equals(sHorizontal, other.sHorizontal) &&
            const DeepCollectionEquality().equals(sVertical, other.sVertical) &&
            const DeepCollectionEquality().equals(m, other.m) &&
            const DeepCollectionEquality().equals(mHorizontal, other.mHorizontal) &&
            const DeepCollectionEquality().equals(mVertical, other.mVertical) &&
            const DeepCollectionEquality().equals(l, other.l) &&
            const DeepCollectionEquality().equals(lHorizontal, other.lHorizontal) &&
            const DeepCollectionEquality().equals(lVertical, other.lVertical));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(xs),
      const DeepCollectionEquality().hash(xsHorizontal),
      const DeepCollectionEquality().hash(xsVertical),
      const DeepCollectionEquality().hash(s),
      const DeepCollectionEquality().hash(sHorizontal),
      const DeepCollectionEquality().hash(sVertical),
      const DeepCollectionEquality().hash(m),
      const DeepCollectionEquality().hash(mHorizontal),
      const DeepCollectionEquality().hash(mVertical),
      const DeepCollectionEquality().hash(l),
      const DeepCollectionEquality().hash(lHorizontal),
      const DeepCollectionEquality().hash(lVertical),
    );
  }
}

extension CustomPaddingsBuildContext on BuildContext {
  CustomPaddings get customPaddings => Theme.of(this).extension<CustomPaddings>()!;
}
