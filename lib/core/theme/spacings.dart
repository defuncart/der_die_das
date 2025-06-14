// ignore_for_file: unused_element, unused_field, annotate_overrides

part of 'theme.dart';

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class CustomSpacings extends ThemeExtension<CustomSpacings> with _$CustomSpacingsTailorMixin {
  const CustomSpacings({
    this.xs = _Spacings.xs,
    this.s = _Spacings.xs,
    this.m = _Spacings.xs,
    this.l = _Spacings.xs,
  });

  final double xs;
  final double s;
  final double m;
  final double l;
}

extension CustomSpacingsExtensions on double {
  Widget toWidget() => Gap(this);
}

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class CustomPaddings extends ThemeExtension<CustomPaddings> with _$CustomPaddingsTailorMixin {
  const CustomPaddings({
    this.xs = const EdgeInsets.all(_Spacings.xs),
    this.xsHorizontal = const EdgeInsets.symmetric(horizontal: _Spacings.xs),
    this.xsVertical = const EdgeInsets.symmetric(vertical: _Spacings.xs),
    this.s = const EdgeInsets.all(_Spacings.s),
    this.sHorizontal = const EdgeInsets.symmetric(horizontal: _Spacings.s),
    this.sVertical = const EdgeInsets.symmetric(vertical: _Spacings.s),
    this.m = const EdgeInsets.all(_Spacings.m),
    this.mHorizontal = const EdgeInsets.symmetric(horizontal: _Spacings.m),
    this.mVertical = const EdgeInsets.symmetric(vertical: _Spacings.m),
    this.l = const EdgeInsets.all(_Spacings.l),
    this.lHorizontal = const EdgeInsets.symmetric(horizontal: _Spacings.l),
    this.lVertical = const EdgeInsets.symmetric(vertical: _Spacings.l),
  });

  final EdgeInsets xs;
  final EdgeInsets xsHorizontal;
  final EdgeInsets xsVertical;
  final EdgeInsets s;
  final EdgeInsets sHorizontal;
  final EdgeInsets sVertical;
  final EdgeInsets m;
  final EdgeInsets mHorizontal;
  final EdgeInsets mVertical;
  final EdgeInsets l;
  final EdgeInsets lHorizontal;
  final EdgeInsets lVertical;
}

abstract class _Spacings {
  static const double xs = 4;
  static const double s = 8;
  static const double m = 16;
  static const double l = 24;
}
