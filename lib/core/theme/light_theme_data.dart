import 'package:flutter/material.dart';
import 'package:my_e_book/core/utils/app_colors.dart';
import 'package:my_e_book/core/utils/font_manager.dart';
import 'package:my_e_book/core/utils/styles_manager.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

ThemeData getLightThemeData() => ThemeData(
      primaryColor: AppColors.myIndigo,
      scaffoldBackgroundColor: AppColors.white,
      backgroundColor: AppColors.white,
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.offWhite.withOpacity(AppSize.s0_8),
        width: AppSize.s304,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s15)),
      ),
      listTileTheme: ListTileThemeData(
        iconColor: AppColors.myDarkBlue,
        style: ListTileStyle.drawer,
        horizontalTitleGap: AppSize.s0,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.myDarkBlue),
        titleTextStyle: getRegularAppBarTitleStyle(color: AppColors.black),
        elevation: AppSize.s0,
      ),
      iconTheme: IconThemeData(color: AppColors.myDarkGrey, size: AppSize.s24),
      textTheme: TextTheme(
        displayLarge: getMediumStyle(
            color: AppColors.black, fontSize: FontSize.s22, letterSpacing: AppSize.s1),
        displayMedium:
            getMediumStyle(color: AppColors.black, fontSize: FontSize.s20),
        displaySmall: getBoldStyle(color: AppColors.myIndigo, fontSize: FontSize.s18),
        headlineMedium: getMediumStyle(color: AppColors.myIndigo, fontSize: FontSize.s17),
        headlineSmall: getMediumStyle(color: AppColors.black, fontSize: FontSize.s16),
        titleLarge: getMediumStyle(color: AppColors.black, fontSize: FontSize.s18),
        titleMedium: getMediumStyle(color: AppColors.offWhite, fontSize: FontSize.s16), //DEFAULT BUTTON TEXT(DRAWER)
        // titleSmall: TextStyle(
        //   color: AppColors.myDarkBlue,
        // ), //DRAWER TITLE AND OTHERS,
        // bodyLarge: TextStyle(color: AppColors.myDarkGrey), //everything
        // bodyMedium: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     color: AppColors.myDarkBlue), //DAY IN WEEK
        // bodySmall: TextStyle(
        //   color: AppColors.myDarkGrey,
        //   fontWeight: FontWeight.w500,
        //   fontSize: AppSize.s10,
        //   letterSpacing: AppSize.s2,
        // ),
      ),
    );