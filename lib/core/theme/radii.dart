// ignore_for_file: unused_element, unused_field

part of 'theme.dart';

@Tailor(
  themes: ['light'],
  themeGetter: ThemeGetter.onBuildContext,
)
class _$CustomRadii {
  static final xs = [
    BorderRadius.circular(_Radii.xs),
  ];
  static final s = [
    BorderRadius.circular(_Radii.s),
  ];
  static final m = [
    BorderRadius.circular(_Radii.m),
  ];
  static final l = [
    BorderRadius.circular(_Radii.l),
  ];
}

abstract class _Radii {
  static const double xs = 4;
  static const double s = 8;
  static const double m = 16;
  static const double l = 24;
}
