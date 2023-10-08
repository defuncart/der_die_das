// ignore_for_file: unused_element, unused_field

part of 'theme.dart';

@Tailor(
  themes: ['light'],
  themeGetter: ThemeGetter.onBuildContext,
  requireStaticConst: true,
)
class _$CustomSpacings {
  static const xs = [
    Gap(_Spacings.xs),
  ];
  static const s = [
    Gap(_Spacings.s),
  ];
  static const m = [
    Gap(_Spacings.m),
  ];
  static const l = [
    Gap(_Spacings.l),
  ];
}

@Tailor(
  themes: ['light'],
  themeGetter: ThemeGetter.onBuildContext,
  requireStaticConst: true,
)
class _$CustomPaddings {
  static const xs = [
    EdgeInsets.all(_Spacings.xs),
  ];
  static const xsHorizontal = [
    EdgeInsets.symmetric(horizontal: _Spacings.xs),
  ];
  static const xsVertical = [
    EdgeInsets.symmetric(vertical: _Spacings.xs),
  ];
  static const s = [
    EdgeInsets.all(_Spacings.s),
  ];
  static const sHorizontal = [
    EdgeInsets.symmetric(horizontal: _Spacings.s),
  ];
  static const sVertical = [
    EdgeInsets.symmetric(vertical: _Spacings.s),
  ];
  static const m = [
    EdgeInsets.all(_Spacings.m),
  ];
  static const mHorizontal = [
    EdgeInsets.symmetric(horizontal: _Spacings.m),
  ];
  static const mVertical = [
    EdgeInsets.symmetric(vertical: _Spacings.m),
  ];
  static const l = [
    EdgeInsets.all(_Spacings.l),
  ];
  static const lHorizontal = [
    EdgeInsets.symmetric(horizontal: _Spacings.l),
  ];
  static const lVertical = [
    EdgeInsets.symmetric(vertical: _Spacings.l),
  ];
}

abstract class _Spacings {
  static const double xs = 4;
  static const double s = 8;
  static const double m = 16;
  static const double l = 24;
}
