import 'package:flutter/material.dart';
import 'package:my_e_book/core/utils/app_colors.dart';
import 'package:my_e_book/core/utils/font_manager.dart';
import 'package:my_e_book/core/utils/styles_manager.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

ThemeData getDarkThemeData() => ThemeData(
      primaryColor: AppColors.paleGreen,
      scaffoldBackgroundColor: AppColors.black,
      backgroundColor: AppColors.black,
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.black.withOpacity(AppSize.s0_8),
        width: AppSize.s304,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s15),
        ),
      ),
      listTileTheme: ListTileThemeData(
        iconColor: AppColors.offWhite,
        style: ListTileStyle.drawer,
        horizontalTitleGap: AppSize.s0,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.black,
        iconTheme: IconThemeData(color: AppColors.offWhite),
        titleTextStyle: getRegularAppBarTitleStyle(color: AppColors.white),
        elevation: AppSize.s0,
      ),
      iconTheme: IconThemeData(color: AppColors.offWhite, size: AppSize.s24),
      textTheme: TextTheme(
        displayLarge: getMediumStyle(
            color: AppColors.offWhite, fontSize: FontSize.s22, letterSpacing: AppSize.s1),
        displayMedium:
            getMediumStyle(color: AppColors.white, fontSize: FontSize.s20),
        displaySmall: getMediumStyle(color: AppColors.paleGreen, fontSize: FontSize.s18),
        headlineMedium:
            getMediumStyle(color: AppColors.paleGreen, fontSize: FontSize.s17),
        headlineSmall: getMediumStyle(color: AppColors.offWhite, fontSize: FontSize.s16),
        titleLarge: getMediumStyle(color: AppColors.offWhite, fontSize: FontSize.s18),
        titleMedium: getMediumStyle(color: AppColors.offWhite, fontSize: FontSize.s16), //DEFAULT BUTTON TEXT(DRAWER)
        // titleSmall: TextStyle(
        //   color: AppColors.white,
        // ), //DRAWER TITLE AND OTHERS,
        // bodyLarge: TextStyle(color: AppColors.myGrey), //everything
        // bodyMedium: TextStyle(
        //     fontWeight: FontWeight.bold, color: AppColors.white), //DAY IN WEEK
        // bodySmall: TextStyle(
        //   color: AppColors.myGrey,
        //   fontWeight: FontWeight.w500,
        //   fontSize: AppSize.s10,
        //   letterSpacing: AppSize.s2,
        // ),
      ),
    );
