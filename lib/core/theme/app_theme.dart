import 'package:my_e_book/core/theme/dark_theme_data.dart';
import 'package:my_e_book/core/theme/light_theme_data.dart';
import 'package:my_e_book/core/utils/app_strings.dart';

enum AppTheme {
  darkTheme(AppStrings.darkTheme),
  lightTheme(AppStrings.lightTheme);

  const AppTheme(this.name);
  final String name;
}

final appThemeData = {
  AppTheme.darkTheme: getDarkThemeData(),
  AppTheme.lightTheme: getLightThemeData(),
};