import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_theme.tailor.dart';

final appTheme = ThemeData(
  useMaterial3: true,
  splashColor: Colors.transparent,
  hoverColor: Colors.transparent,
  highlightColor: Colors.transparent,
  hintColor: Colors.transparent,
  scaffoldBackgroundColor: _AppColors.white,
  primaryColor: _AppColors.purple,
  colorScheme: const ColorScheme.light(
    primary: _AppColors.purple,
    secondary: _AppColors.green,
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
  ),
  appBarTheme: const AppBarTheme(
    // backgroundColor: _AppColors.lightPurple,
    backgroundColor: Colors.transparent,
    foregroundColor: _AppColors.black,
    elevation: 0,
  ),
  platform: TargetPlatform.android,
  extensions: const [
    CustomColorScheme.light,
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
    _AppColors.black,
  ];
  static const green = [
    _AppColors.green,
  ];
  static const red = [
    _AppColors.red,
  ];
  static const levelIcon = [
    _AppColors.purple,
  ];
  static const defaultButton = [
    _AppColors.black,
  ];
}

// https://mycolor.space/?hex=%238E44AF&sub=1

abstract class _AppColors {
  static const white = Color(0xffECF0F1);
  // static const white = Color(0xffFFF7FF);
  static const blue = Color(0xff2E81B7);
  // static const blue = Color(0xff6E8DAC);
  // static const blue = Color(0xff4F7EA7);
  // static const blue = Color(0xff007CD9);
  static const brown = Color(0xffB75D2F);
  // static const brown = Color(0xffB13F10);
  // static const brown = Color(0xffEF7442);
  static const black = Color(0xff2C3E4F);
  // static const black = Color(0xff4E4351);
  static const gray = Color(0xffB3A7B7);
  static const purple = Color(0xff8E44AF);
  // static const lightPurple = Color(0xffAF8BBC);
  static const lightPurple = Color(0xffAE62CF);
  static const green = Color(0xff3FCC70);
  // static const green = Color(0xff66AF44);
  static const red = Color(0xffAF4466);
}

abstract class DFAColors {
  static const pink = Color(0xffE8337E);
  static const blue = Color(0xff337EE8);
  static const green = Color(0xff33E87E);
  static const yellow = Color(0xffE8E833);
}
