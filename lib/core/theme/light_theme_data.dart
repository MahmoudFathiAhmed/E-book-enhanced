import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            borderRadius: BorderRadius.circular(AppSize.s15.r)),
      ),
      listTileTheme: ListTileThemeData(
          iconColor: AppColors.myIndigo,
          style: ListTileStyle.drawer,
          horizontalTitleGap: AppSize.s0,
          textColor: AppColors.myDarkBlue),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.myIndigo),
        titleTextStyle: getRegularAppBarTitleStyle(color: AppColors.black),
        elevation: AppSize.s0,
      ),
      iconTheme: IconThemeData(color: AppColors.myIndigo, size: AppSize.s24.r),
      textTheme: TextTheme(
        displayLarge: getRegularStyle(
            color: AppColors.black,
            fontSize: FontSize.s22,
            letterSpacing: AppSize.s1),
        displayMedium: getRegularStyle(
          color: AppColors.black,
          fontSize: FontSize.s20,
        ),
        displaySmall:
            getRegularStyle(color: AppColors.myIndigo, fontSize: FontSize.s18),
        headlineMedium:
            getRegularStyle(color: AppColors.myIndigo, fontSize: FontSize.s17),
        headlineSmall:
            getRegularStyle(color: AppColors.black, fontSize: FontSize.s16),
        titleLarge:
            getRegularStyle(color: AppColors.black, fontSize: FontSize.s18),
        titleMedium: getRegularStyle(
            color: AppColors.offWhite,
            fontSize: FontSize.s16), //DEFAULT BUTTON TEXT(DRAWER)
        titleSmall: getRegularStyle(
            color: AppColors.myIndigo,
            letterSpacing: 1,
            fontSize: FontSize.s18),
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
