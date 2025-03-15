// ignore_for_file: unused_element, unused_field

part of 'theme.dart';

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class CustomRadii extends ThemeExtension<CustomRadii> with _$CustomRadiiTailorMixin {
  const CustomRadii({required this.xs, required this.s, required this.m, required this.l});

  final BorderRadius xs;
  final BorderRadius s;
  final BorderRadius m;
  final BorderRadius l;

  factory CustomRadii.standard() => CustomRadii(
    xs: BorderRadius.circular(_Radii.xs),
    s: BorderRadius.circular(_Radii.s),
    m: BorderRadius.circular(_Radii.m),
    l: BorderRadius.circular(_Radii.l),
  );
}

abstract class _Radii {
  static const double xs = 4;
  static const double s = 8;
  static const double m = 16;
  static const double l = 24;
}
