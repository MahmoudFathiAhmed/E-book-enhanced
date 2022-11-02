import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_e_book/core/theme/dark_theme_data.dart';
import 'package:my_e_book/core/theme/light_theme_data.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(getDarkThemeData());

  void changeTheme() {
    if (state == getLightThemeData()) {
      emit(getDarkThemeData());
    } else {
      emit(getLightThemeData());
    }
  }
}
