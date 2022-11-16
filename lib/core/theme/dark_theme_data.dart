import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        width: AppSize.s304.w,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s15.r),
        ),
      ),
      listTileTheme: ListTileThemeData(
        iconColor: AppColors.paleGreen,
        style: ListTileStyle.drawer,
        horizontalTitleGap: AppSize.s0,
        textColor: AppColors.offWhite,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.black,
        iconTheme: IconThemeData(color: AppColors.paleGreen),
        titleTextStyle: getRegularAppBarTitleStyle(color: AppColors.white),
        elevation: AppSize.s0,
      ),
      iconTheme: IconThemeData(color: AppColors.paleGreen, size: AppSize.s24.r),
      textTheme: TextTheme(
        displayLarge: getRegularStyle(
            color: AppColors.offWhite,
            fontSize: FontSize.s22,
            letterSpacing: AppSize.s1),
        displayMedium:
            getRegularStyle(color: AppColors.white, fontSize: FontSize.s20),
        displaySmall:
            getRegularStyle(color: AppColors.paleGreen, fontSize: FontSize.s18),
        headlineMedium:
            getRegularStyle(color: AppColors.paleGreen, fontSize: FontSize.s17),
        headlineSmall:
            getRegularStyle(color: AppColors.offWhite, fontSize: FontSize.s16),
        titleLarge:
            getRegularStyle(color: AppColors.offWhite, fontSize: FontSize.s18),
        titleMedium:
            getRegularStyle(color: AppColors.offWhite, fontSize: FontSize.s16),
        titleSmall: getRegularStyle(
            color: AppColors.paleGreen,
            letterSpacing: 1,
            fontSize: FontSize.s18),
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
