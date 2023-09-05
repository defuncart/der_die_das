import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  splashColor: Colors.transparent,
  hoverColor: Colors.transparent,
  highlightColor: Colors.transparent,
  hintColor: Colors.transparent,
  scaffoldBackgroundColor: AppColors.white,
  primaryColor: AppColors.purple,
  colorScheme: const ColorScheme.light(
    primary: AppColors.purple,
    secondary: AppColors.green,
  ),
  // fontFamily: GoogleFonts.openSans().fontFamily,
  fontFamily: 'Lato',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.black,
    ),
    titleMedium: TextStyle(
      color: AppColors.black,
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.lightPurple,
    elevation: 0,
  ),
  platform: TargetPlatform.android,
);

// https://mycolor.space/?hex=%238E44AF&sub=1

abstract class AppColors {
  // static const white = Color(0xffECF0F1);
  static const white = Color(0xffFFF7FF);
  // static const blue = Color(0xff2E81B7);
  // static const blue = Color(0xff6E8DAC);
  static const blue = Color(0xff4F7EA7);
  // static const blue = Color(0xff007CD9);
  // static const brown = Color(0xffB75D2F);
  static const brown = Color(0xffB13F10);
  // static const brown = Color(0xffEF7442);
  // static const black = Color(0xff2C3E4F);
  static const black = Color(0xff4E4351);
  static const gray = Color(0xffB3A7B7);
  static const purple = Color(0xff8E44AF);
  // static const lightPurple = Color(0xffAF8BBC);
  static const lightPurple = Color(0xffAE62CF);
  // static const green = Color(0xff3FCC70);
  static const green = Color(0xff66AF44);
  static const red = Color(0xffAF4466);
}

abstract class DFAColors {
  static const pink = Color(0xffE8337E);
  static const blue = Color(0xff337EE8);
  static const green = Color(0xff33E87E);
  static const yellow = Color(0xffE8E833);
}
