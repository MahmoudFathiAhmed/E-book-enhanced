import 'package:my_e_book/core/theme/dark_theme_data.dart';
import 'package:my_e_book/core/theme/light_theme_data.dart';

class AppThemes {
  static final appThemeData = {
    AppTheme.lightTheme: getLightThemeData(),
    AppTheme.darkTheme: getDarkThemeData()
  };
}

enum AppTheme {
  lightTheme,
  darkTheme,
}
