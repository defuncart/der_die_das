// ignore_for_file: unused_element, unused_field

part of 'theme.dart';

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class CustomColorScheme extends ThemeExtension<CustomColorScheme> with _$CustomColorSchemeTailorMixin {
  const CustomColorScheme({
    this.der = _AppColors.blue,
    this.die = _AppColors.brown,
    this.das = _AppColors.gray,
    this.levelIcon = _AppColors.purple,
    this.defaultButton = _AppColors.black2,
  });

  final Color der;
  final Color die;
  final Color das;
  final Color levelIcon;
  final Color defaultButton;
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
