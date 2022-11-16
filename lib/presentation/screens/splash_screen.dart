import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_e_book/core/utils/app_assets.dart';
import 'package:my_e_book/core/utils/app_colors.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/presentation/screens/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        AppImages.eBookLogo,
      ),
      splashIconSize: AppSize.s150,
      nextScreen: const MainScreen(),
      backgroundColor: AppColors.navy,
      duration: 4000,
      // duration: AppCount.c2000,
    );
  }
}
