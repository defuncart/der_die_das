import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:gap/gap.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'colors.dart';
part 'radii.dart';
part 'spacings.dart';
part 'theme.tailor.dart';
part 'theme_extensions.dart';

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
  fontFamily: AppFonts.lato,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: _AppColors.gray,
    ),
    titleSmall: TextStyle(
      color: _AppColors.black,
    ),
    titleMedium: TextStyle(
      color: _AppColors.black,
    ),
    titleLarge: TextStyle(
      color: _AppColors.black,
    ),
    headlineSmall: TextStyle(
      color: _AppColors.black,
    ),
    headlineMedium: TextStyle(
      color: _AppColors.black,
    ),
    headlineLarge: TextStyle(
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
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    foregroundColor: _AppColors.gray,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: _AppColors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: _AppColors.white,
    ),
  ),
  platform: TargetPlatform.android,
  extensions: [
    CustomColorScheme.light,
    CustomRadii.light,
    CustomSpacings.light,
    CustomPaddings.light,
  ],
);

class AppFonts {
  AppFonts._();

  static const lato = 'Lato';
  static const lovelo = 'Lovelo';
}
