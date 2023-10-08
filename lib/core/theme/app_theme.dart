import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_theme.tailor.dart';

final appTheme = ThemeData(
  useMaterial3: true,
  splashFactory: NoSplash.splashFactory,
  splashColor: Colors.transparent,
  hoverColor: Colors.transparent,
  highlightColor: Colors.transparent,
  hintColor: Colors.transparent,
  scaffoldBackgroundColor: _AppColors.white,
  primaryColor: _AppColors.purple,
  colorScheme: const ColorScheme.light(
    primary: _AppColors.purple,
    secondary: _AppColors.purple,
    tertiary: _AppColors.purple,
  ),
  // fontFamily: GoogleFonts.openSans().fontFamily,
  fontFamily: 'Lato',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: _AppColors.black,
    ),
    titleMedium: TextStyle(
      color: _AppColors.black,
    ),
    headlineMedium: TextStyle(
      color: _AppColors.black,
    ),
  ).apply(
    bodyColor: _AppColors.gray,
    displayColor: _AppColors.black,
  ),
  listTileTheme: const ListTileThemeData(
    textColor: _AppColors.black,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    foregroundColor: _AppColors.black,
    elevation: 0,
  ),
  platform: TargetPlatform.android,
  extensions: [
    CustomColorScheme.light,
    CustomRadii.light,
    CustomSpacings.light,
    CustomPaddings.light,
  ],
);

// ignore: unused_element
@Tailor(
  themes: ['light'],
  themeGetter: ThemeGetter.onBuildContext,
  requireStaticConst: true,
)
class _$CustomColorScheme {
  static const der = [
    _AppColors.blue,
  ];
  static const die = [
    _AppColors.brown,
  ];
  static const das = [
    _AppColors.gray,
  ];
  static const levelIcon = [
    _AppColors.purple,
  ];
  static const defaultButton = [
    _AppColors.black2,
  ];
}

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

abstract class _Radii {
  static const double xs = 4;
  static const double s = 8;
  static const double m = 16;
  static const double l = 24;
}

abstract class _Spacings {
  static const double xs = 4;
  static const double s = 8;
  static const double m = 16;
  static const double l = 24;
}

// https://mycolor.space/?hex=%238E44AF&sub=1

abstract class _AppColors {
  static const white = Color(0xffECF0F1);
  static const blue = Color(0xff2E81B7); // 00A8D3
  static const brown = Color(0xffBD5B00);
  static const gray = Color(0xff324B50);
  static const black = Color(0xff2B2F2F);
  static const black2 = Color(0xff434647);
  static const purple = Color(0xff8E44AF);
}

// abstract class _AppColors {
//   static const white = Color(0xffECF0F1);
//   static const blue = Color(0xff2E81B7);
//   static const brown = Color(0xffB75D2F);
//   static const gray = Color(0xff2C3E4F);
//   static const black = Color(0xff2C3E4F);
//   static const black2 = Color(0xff2C3E4F);
//   static const purple = Color(0xff8E44AF);
//   static const green = Color(0xff3FCC70);
//   static const red = Color(0xffAF4466);
// }
